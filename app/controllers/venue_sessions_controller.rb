class VenueSessionsController < ApplicationController
  def new
  end

  def create
    venue = Venue.find_by(email: params[:session][:email].downcase)
    if venue && venue.authenticate(params[:session][:password])
      redirect_to venue
      else
      flash[:danger] = 'Invalid email/password combination'
      render :new
    end
  end

  def show
  end

  def index
    @venues = Venue.all
  end

  def edit
  end

  def update
    if @venue.update
      redirect_to @venue
    else
      render :edit
    end
  end

  def destroy
    log_out
       redirect_to root_url
  end

  private

  def find_venue
    @venue = Venue.find(params[:id])
  end


    def venue_params
      params.require(:venue).permit(:name, :email, :zip_code, :password, :password_confirmation)
    end
