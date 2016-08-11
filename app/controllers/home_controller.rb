class HomeController < ApplicationController
  def index
  end

  def authenticate
    auth params[:password]
    if logged_in?
      redirect_to locale_root_path(locale: I18n.locale),
        notice: I18n.t('notices.authenticated')
    else
      redirect_to locale_root_path(locale: I18n.locale),
        error: I18n.t('notices.authentication_failed')
    end
  end

  def rsvp
    RsvpMailer.rsvp(params[:name], params[:email], params[:notes], params[:answer]).
      deliver_later
    redirect_to locale_root_path(locale: I18n.locale),
      notice: I18n.t('notices.email')
  end

  def suggestions
    RsvpMailer.suggestions(params[:name], params[:email],
                           params[:suggestions]).deliver_later
    redirect_to locale_root_path(locale: I18n.locale),
      notice: I18n.t('notices.email')
  end
end
