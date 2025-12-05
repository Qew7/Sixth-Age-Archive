# frozen_string_literal: true

class RulebooksController < ApplicationController
  def index
    @rulebooks_by_category = Rulebook.by_category
  end

  def show
    @rulebook = Rulebook.find(params[:id])
  end

  def download
    @rulebook = Rulebook.find(params[:id])

    if @rulebook.pdf.attached?
      redirect_to rails_blob_path(@rulebook.pdf, disposition: "attachment")
    else
      redirect_to rulebook_path(@rulebook), alert: "PDF not available"
    end
  end
end
