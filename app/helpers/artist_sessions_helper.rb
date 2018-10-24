module ArtistSessionsHelper

  def log_in(artist)
    session[:artist_id] = artist.id
  end

  def current_artist
    if session[:artist_id]
      @current_artist ||= Artist.find_by(id: session[:artist_id])
    end
  end

  def logged_in?
   !current_artist.nil?
  end

  def log_out
    session.delete(:artist_id)
    @current_artist = nil
  end
end
