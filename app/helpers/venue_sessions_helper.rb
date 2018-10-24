module VenueSessionsHelper

  def log_in(venue)
    session[:venue_id] = venue.id
  end

  def current_venue
    if session[:venue_id]
      @current_venue ||= Venue.find_by(id: session[:venue_id])
    end
  end

  def logged_in?
   !current_venue.nil?
  end

  def log_out
    session.delete(:venue_id)
    @current_venue = nil
  end

end
