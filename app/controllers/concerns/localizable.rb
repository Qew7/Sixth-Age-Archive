# frozen_string_literal: true

module Localizable
  extend ActiveSupport::Concern

  included do
    before_action :set_locale
    helper_method :available_locales
  end

  private

  def set_locale
    I18n.locale = locale_from_params || locale_from_cookie || locale_from_header || I18n.default_locale
  end

  def locale_from_params
    locale = params[:locale]
    locale if locale.present? && I18n.available_locales.map(&:to_s).include?(locale)
  end

  def locale_from_cookie
    locale = cookies[:locale]
    locale if locale.present? && I18n.available_locales.map(&:to_s).include?(locale)
  end

  def locale_from_header
    http_accept_language = request.env["HTTP_ACCEPT_LANGUAGE"]
    return nil unless http_accept_language

    parsed = http_accept_language.scan(/^[a-z]{2}/).first
    parsed if parsed && I18n.available_locales.map(&:to_s).include?(parsed)
  end

  def available_locales
    {
      en: "English",
      ru: "Русский"
    }
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
