# frozen_string_literal: true

class ArmyListsController < ApplicationController
  before_action :set_army_list, only: [ :show, :edit, :update, :destroy, :add_unit, :remove_unit, :update_unit, :export_pdf ]

  def index
    @army_lists = ArmyList.includes(:army, :game_format).order(updated_at: :desc)
  end

  def show
    @units_by_type = @army_list.army_list_units.includes(:unit).group_by { |alu| alu.unit.unit_type }
    @validation_errors = @army_list.valid_composition?
  end

  def new
    @army_list = ArmyList.new
    @armies = Army.alphabetical
    @game_formats = GameFormat.all
  end

  def create
    @army_list = ArmyList.new(army_list_params)

    if @army_list.save
      redirect_to edit_army_list_path(@army_list), notice: "Army list created! Start adding units."
    else
      @armies = Army.alphabetical
      @game_formats = GameFormat.all
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @armies = Army.alphabetical
    @game_formats = GameFormat.all
    @available_units = @army_list.army.units.order(:unit_type, :name)
    @units_by_type = @army_list.army_list_units.includes(:unit).group_by { |alu| alu.unit.unit_type }
    @validation_errors = @army_list.valid_composition?
  end

  def update
    if @army_list.update(army_list_params)
      redirect_to @army_list, notice: "Army list updated."
    else
      @armies = Army.alphabetical
      @game_formats = GameFormat.all
      @available_units = @army_list.army.units
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @army_list.destroy
    redirect_to army_lists_path, notice: "Army list deleted."
  end

  def add_unit
    unit = Unit.find(params[:unit_id])
    quantity = params[:quantity].to_i.positive? ? params[:quantity].to_i : (unit.min_size || 1)

    army_list_unit = @army_list.army_list_units.build(
      unit: unit,
      quantity: quantity,
      upgrades_selected: []
    )

    if army_list_unit.save
      @army_list.save # Recalculate total
      respond_to do |format|
        format.html { redirect_to edit_army_list_path(@army_list), notice: "#{unit.name} added." }
        format.turbo_stream
      end
    else
      redirect_to edit_army_list_path(@army_list), alert: "Could not add unit."
    end
  end

  def remove_unit
    army_list_unit = @army_list.army_list_units.find(params[:army_list_unit_id])
    army_list_unit.destroy
    @army_list.save # Recalculate total

    respond_to do |format|
      format.html { redirect_to edit_army_list_path(@army_list), notice: "Unit removed." }
      format.turbo_stream
    end
  end

  def update_unit
    army_list_unit = @army_list.army_list_units.find(params[:army_list_unit_id])

    if army_list_unit.update(
      quantity: params[:quantity],
      upgrades_selected: params[:upgrades_selected] || []
    )
      @army_list.save # Recalculate total
      respond_to do |format|
        format.html { redirect_to edit_army_list_path(@army_list) }
        format.turbo_stream
      end
    else
      redirect_to edit_army_list_path(@army_list), alert: "Could not update unit."
    end
  end

  def export_pdf
    # TODO: Generate PDF export
    redirect_to @army_list, notice: "PDF export coming soon!"
  end

  private

  def set_army_list
    @army_list = ArmyList.find(params[:id])
  end

  def army_list_params
    params.require(:army_list).permit(:name, :army_id, :game_format_id, :notes)
  end
end
