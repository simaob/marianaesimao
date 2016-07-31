class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  helper_method :logged_in?


  def logged_in?
    session[:login]
  end


  private

  def auth password
    if ENV["PASSWORDS"].split(",").include?(password.downcase)
      session[:login] = Digest::MD5.hexdigest(password)
      true
    else
      false
    end
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
