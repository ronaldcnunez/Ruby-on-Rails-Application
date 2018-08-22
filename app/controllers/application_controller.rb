class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?
  before_action :authorized

  def current_user
    @artist = Artist.find_by({ id: session[:artist_id] }) || @venue = Venue.find_by({ id: session[:venue_id] })
  end

  def logged_in?
    !!current_user()
  end

  def authorized
    redirect_to artist_login_path unless logged_in?
  end
end
