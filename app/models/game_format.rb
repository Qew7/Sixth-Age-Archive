# frozen_string_literal: true

class GameFormat < ApplicationRecord
  has_many :army_lists, dependent: :nullify

  validates :name, presence: true, uniqueness: true
  validates :points_limit, numericality: { greater_than: 0 }

  # restrictions - JSONB хранит правила формата:
  # - max_lords_percent: 25
  # - max_heroes_percent: 25
  # - min_core_percent: 25
  # - max_special_choices: 3 (или unlimited)
  # - max_rare_choices: 2 (или unlimited)
  # - max_duplicate_special: 2
  # - max_duplicate_rare: 1
  # - special_rules: []

  def default_restrictions
    {
      "max_lords_percent" => 25,
      "max_heroes_percent" => 25,
      "min_core_percent" => 25,
      "max_special_choices" => nil,
      "max_rare_choices" => nil,
      "max_duplicate_special" => nil,
      "max_duplicate_rare" => nil
    }
  end

  def effective_restrictions
    default_restrictions.merge(restrictions || {})
  end

  def max_lords_points
    (points_limit * effective_restrictions["max_lords_percent"].to_i / 100.0).floor
  end

  def max_heroes_points
    (points_limit * effective_restrictions["max_heroes_percent"].to_i / 100.0).floor
  end

  def min_core_points
    (points_limit * effective_restrictions["min_core_percent"].to_i / 100.0).ceil
  end
end
