# frozen_string_literal: true

class ArmyListUnit < ApplicationRecord
  belongs_to :army_list
  belongs_to :unit

  validates :quantity, numericality: { greater_than: 0 }

  before_save :calculate_cost

  def calculate_cost
    self.calculated_cost = unit.calculate_cost(quantity, upgrades_selected || [])
  end

  def selected_upgrades_details
    return [] unless upgrades_selected.present? && unit.upgrades.present?

    upgrades_selected.filter_map do |upgrade_key|
      upgrade = unit.upgrades[upgrade_key]
      { name: upgrade_key, cost: upgrade["cost"] } if upgrade
    end
  end
end
