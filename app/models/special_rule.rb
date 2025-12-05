# frozen_string_literal: true

class SpecialRule < ApplicationRecord
  CATEGORIES = %w[rule weapon armour magic_item equipment].freeze

  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: { in: CATEGORIES }, allow_nil: true

  scope :rules, -> { where(category: [nil, "rule"]) }
  scope :weapons, -> { where(category: "weapon") }
  scope :armour, -> { where(category: "armour") }
  scope :magic_items, -> { where(category: "magic_item") }
  scope :equipment, -> { where(category: "equipment") }

  # Найти правило по имени (case-insensitive)
  def self.find_by_name(name)
    where("LOWER(name) = ?", name.to_s.downcase).first
  end

  # Получить описание правила или nil если не найдено
  def self.description_for(name)
    find_by_name(name)&.description
  end
end
