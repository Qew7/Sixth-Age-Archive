# frozen_string_literal: true

class Unit < ApplicationRecord
  belongs_to :army
  has_many :army_list_units, dependent: :destroy

  UNIT_TYPES = %w[lord hero core special rare].freeze

  validates :name, presence: true
  validates :unit_type, inclusion: { in: UNIT_TYPES }
  validates :base_cost, numericality: { greater_than_or_equal_to: 0 }

  scope :lords, -> { where(unit_type: "lord") }
  scope :heroes, -> { where(unit_type: "hero") }
  scope :core, -> { where(unit_type: "core") }
  scope :special, -> { where(unit_type: "special") }
  scope :rare, -> { where(unit_type: "rare") }

  # stats - JSONB хранит: M, WS, BS, S, T, W, I, A, Ld
  # equipment - JSONB хранит: базовое снаряжение и опции
  # upgrades - JSONB хранит: доступные апгрейды с ценами

  def calculate_cost(quantity, selected_upgrades = [])
    total = base_cost
    total += (quantity - (min_size || 1)) * (cost_per_model || 0)

    selected_upgrades.each do |upgrade_key|
      upgrade = upgrades&.dig(upgrade_key)
      total += upgrade["cost"].to_i if upgrade
    end

    total
  end

  def stat_line
    return {} unless stats

    {
      "M" => stats["M"],
      "WS" => stats["WS"],
      "BS" => stats["BS"],
      "S" => stats["S"],
      "T" => stats["T"],
      "W" => stats["W"],
      "I" => stats["I"],
      "A" => stats["A"],
      "Ld" => stats["Ld"]
    }
  end
end
