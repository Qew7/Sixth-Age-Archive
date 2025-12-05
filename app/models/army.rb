# frozen_string_literal: true

class Army < ApplicationRecord
  has_one_attached :pdf
  has_many :units, dependent: :destroy
  has_many :army_lists, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  scope :alphabetical, -> { order(:name) }

  # Группировка армий по источнику
  SOURCE_TYPES = {
    "Army Book" => "Official Army Book",
    "White Dwarf" => "White Dwarf Magazine",
    "Storm of Chaos" => "Storm of Chaos Campaign",
    "Ravening Hordes" => "Ravening Hordes (interim lists)"
  }.freeze

  def source_type
    return "White Dwarf" if source&.include?("White Dwarf")
    return "Storm of Chaos" if source&.include?("Storm of Chaos")
    return "Ravening Hordes" if source&.include?("Ravening Hordes")
    "Army Book"
  end
end
