# frozen_string_literal: true

class ArmiesController < ApplicationController
  def index
    @armies = Army.alphabetical.includes(:units)
    @armies_by_source = @armies.group_by(&:source_type)
  end

  def show
    @army = Army.includes(:units).find(params[:id])
    @units_by_type = @army.units.group_by(&:unit_type)
  end

  def download
    @army = Army.find(params[:id])

    if @army.pdf.attached?
      redirect_to rails_blob_path(@army.pdf, disposition: "attachment")
    else
      redirect_to army_path(@army), alert: "PDF not available"
    end
  end
end
