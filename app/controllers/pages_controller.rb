# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @armies_count = Army.count
    @rulebooks_count = Rulebook.count
    @featured_armies = Army.limit(6)
  end
end
