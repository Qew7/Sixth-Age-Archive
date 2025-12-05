# frozen_string_literal: true

module Api
  class UnitsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
      if params[:army_id]
        @units = Unit.where(army_id: params[:army_id]).order(:unit_type, :name)
      else
        @units = Unit.includes(:army).order(:name)
      end

      render json: @units.map { |unit| unit_json(unit) }
    end

    def show
      @unit = Unit.find(params[:id])
      render json: unit_json(@unit)
    end

    private

    def unit_json(unit)
      {
        id: unit.id,
        name: unit.name,
        army_id: unit.army_id,
        unit_type: unit.unit_type,
        base_cost: unit.base_cost,
        min_size: unit.min_size,
        max_size: unit.max_size,
        cost_per_model: unit.cost_per_model,
        stats: unit.stats,
        special_rules: unit.special_rules,
        equipment: unit.equipment,
        upgrades: unit.upgrades
      }
    end
  end
end
