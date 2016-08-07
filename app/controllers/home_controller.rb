class HomeController < ApplicationController
  def index
  end

  def authenticate
    auth params[:password]
    redirect_to root_path
  end

  def rsvp
    RsvpMailer.rsvp(params[:name], params[:email], params[:notes], params[:answer]).
      deliver_later
    redirect_to root_path, notice: "Email sent!"
  end

  def suggestions
    RsvpMailer.suggestions(params[:name], params[:email],
                           params[:suggestions]).deliver_late
    redirect_to root_path, notice: "Email set!"
  end
end
