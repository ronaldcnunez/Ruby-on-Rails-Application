class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?
  before_action :authorized

  def current_user
     # @user = Artist.find_by({ id: session[:artist_id] }) || Venue.find_by({ id: session[:venue_id] })
    # @artist = Artist.find_by({ id: session[:artist_id] }) || @venue = Venue.find_by({ id: session[:venue_id] })
    if session[:artist_id]
      @user = Artist.find_by({ id: session[:artist_id]})
    elsif session[:venue_id]
      @user = Venue.find_by({ id: session[:venue_id] })
    end
  end

  def logged_in?
    !!current_user()
  end

  def authorized
    redirect_to artist_login_path unless logged_in?
  end
end
