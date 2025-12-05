# frozen_string_literal: true

class ArmyList < ApplicationRecord
  belongs_to :army
  belongs_to :game_format
  has_many :army_list_units, dependent: :destroy
  has_many :units, through: :army_list_units

  validates :name, presence: true

  before_save :calculate_total_points

  def calculate_total_points
    self.total_points = army_list_units.sum(&:calculated_cost)
  end

  def points_by_type
    {
      lords: army_list_units.joins(:unit).where(units: { unit_type: "lord" }).sum(:calculated_cost),
      heroes: army_list_units.joins(:unit).where(units: { unit_type: "hero" }).sum(:calculated_cost),
      core: army_list_units.joins(:unit).where(units: { unit_type: "core" }).sum(:calculated_cost),
      special: army_list_units.joins(:unit).where(units: { unit_type: "special" }).sum(:calculated_cost),
      rare: army_list_units.joins(:unit).where(units: { unit_type: "rare" }).sum(:calculated_cost)
    }
  end

  def valid_composition?
    errors = []
    pts = points_by_type
    
    if pts[:lords] > game_format.max_lords_points
      errors << "Lords exceed #{game_format.effective_restrictions['max_lords_percent']}% limit"
    end
    
    if pts[:heroes] > game_format.max_heroes_points
      errors << "Heroes exceed #{game_format.effective_restrictions['max_heroes_percent']}% limit"
    end
    
    if pts[:core] < game_format.min_core_points
      errors << "Core units below #{game_format.effective_restrictions['min_core_percent']}% minimum"
    end
    
    errors
  end

  def remaining_points
    game_format.points_limit - (total_points || 0)
  end
end
