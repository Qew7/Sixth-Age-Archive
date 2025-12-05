# frozen_string_literal: true

class GameFormat < ApplicationRecord
  has_many :army_lists, dependent: :nullify

  validates :name, presence: true, uniqueness: true
  validates :points_limit, numericality: { greater_than: 0 }

  # restrictions - JSONB хранит правила формата:
  # - max_lords_percent: 25 (или 0 для warband)
  # - max_heroes_percent: 25
  # - min_core_percent: 25
  # - max_core_units: nil (unlimited) или число
  # - min_core_units: 2 (для warband)
  # - max_special_choices: nil или число
  # - max_rare_choices: nil или число
  # - max_total_units: nil или число (для warband)
  # - max_hero_points: nil или число (150 для large warband)
  # - max_commander_points: nil или число (75 для small warband)
  # - allow_lords: true/false
  # - allow_special: true/false
  # - allow_rare: true/false
  # - allow_war_machines: true/false
  # - allow_chariots: true/false
  # - allow_flyers: true/false
  # - allow_magic_items: true/false
  # - warband_unit_sizes: true/false (меньшие минимальные размеры)
  # - special_rules: [] (текстовые пояснения)

  def default_restrictions
    {
      "max_lords_percent" => 25,
      "max_heroes_percent" => 25,
      "min_core_percent" => 25,
      "min_core_units" => nil,
      "max_total_units" => nil,
      "max_special_choices" => nil,
      "max_rare_choices" => nil,
      "max_hero_points" => nil,
      "max_commander_points" => nil,
      "allow_lords" => true,
      "allow_special" => true,
      "allow_rare" => true,
      "allow_war_machines" => true,
      "allow_chariots" => true,
      "allow_flyers" => true,
      "allow_magic_items" => true,
      "warband_unit_sizes" => false
    }
  end

  def effective_restrictions
    default_restrictions.merge(restrictions || {})
  end

  def max_lords_points
    return 0 unless effective_restrictions["allow_lords"]
    (points_limit * effective_restrictions["max_lords_percent"].to_i / 100.0).floor
  end

  def max_heroes_points
    if effective_restrictions["max_hero_points"]
      effective_restrictions["max_hero_points"]
    else
      (points_limit * effective_restrictions["max_heroes_percent"].to_i / 100.0).floor
    end
  end

  def min_core_points
    (points_limit * effective_restrictions["min_core_percent"].to_i / 100.0).ceil
  end

  def warband?
    effective_restrictions["warband_unit_sizes"] == true
  end

  def small_warband?
    warband? && points_limit < 200
  end

  def large_warband?
    warband? && points_limit >= 200
  end
end
