class HomeController < ApplicationController
  def index
  end

  def authenticate
    auth params[:password]
    redirect_to root_path
  end
end
