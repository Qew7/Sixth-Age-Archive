# frozen_string_literal: true

class Rulebook < ApplicationRecord
  has_one_attached :pdf

  CATEGORIES = %w[core supplement faq errata].freeze

  validates :title, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  scope :core, -> { where(category: "core") }
  scope :supplements, -> { where(category: "supplement") }
  scope :faqs, -> { where(category: "faq") }
  scope :errata, -> { where(category: "errata") }

  def self.by_category
    CATEGORIES.index_with { |cat| where(category: cat) }
  end
end
