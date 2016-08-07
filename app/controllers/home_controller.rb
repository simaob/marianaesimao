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
end
