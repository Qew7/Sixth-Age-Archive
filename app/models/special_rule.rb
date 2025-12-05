# frozen_string_literal: true

class SpecialRule < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  # Найти правило по имени (case-insensitive)
  def self.find_by_name(name)
    where("LOWER(name) = ?", name.to_s.downcase).first
  end

  # Получить описание правила или nil если не найдено
  def self.description_for(name)
    find_by_name(name)&.description
  end
end
