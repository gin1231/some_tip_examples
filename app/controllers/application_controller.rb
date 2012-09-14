class ApplicationController < ActionController::Base
  before_filter :set_locale

  def default_url_options
    {:locale => I18n.locale}
  end
  protect_from_forgery
  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
