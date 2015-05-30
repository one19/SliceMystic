class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #authenticates user sessions every time
  before_action :authenticate
  # before_action authenticate would run once, immediately

  private
  def authenticate
    @current_user = User.find session[:user] if session[:user]
  end

end
