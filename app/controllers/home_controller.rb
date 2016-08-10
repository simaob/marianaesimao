class HomeController < ApplicationController
  def index
  end

  def authenticate
    auth params[:password]
    redirect_to locale_root_path(locale: I18n.locale),
      notice: I18n.t('notices.authenticated')
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
