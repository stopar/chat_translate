class ApplicationController < ActionController::Base
  # The code below will work normally for basic Rails
  # However for Devise this will not work due to a bug in Warden
  # For more see: https://github.com/tigrish/devise-i18n
  #
  # around_action :switch_locale
  #
  # def switch_locale(&action)
  #   locale = params[:locale] || I18n.default_locale
  #   I18n.with_locale(locale, &action)
  # end
  
  # Instead for devise we will try to use the code below:
  
  before_action :set_locale
  
  def set_locale
    locale = params[:locale] || I18n.default_locale
    I18n.locale = locale
  end
  
  def default_url_options
    { locale: I18n.locale }
  end
end
