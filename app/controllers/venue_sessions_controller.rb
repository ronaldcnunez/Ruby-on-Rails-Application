class VenueSessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def new
  end

  def create
    @venue = Venue.find_by({ email: params[:email] })
    if !!@venue && @venue.authenticate(params[:password])
      flash[:notice] = "Successfully logged in #{@venue.name}!"
      session[:venue_id] = @venue.id
      redirect_to venue_path(@venue)
    else
     flash[:notice] = "Invalid username or password"
     redirect_to venue_login_path
    end
  end

  def destroy
    session.delete(:venue_id)
    redirect_to root_path
  end
end
