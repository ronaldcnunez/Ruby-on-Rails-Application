class VenuesController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :index, :show]
  before_action :find_venue, only: [:show, :edit, :update, :destroy]

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.create(venue_params)
    if @venue.valid?
      flash[:notice] = "Signup successful! Welcome, #{@venue.name}"
      session[:venue_id] = @venue.id
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def show
  end

  def index
    if params[:venue_search]
      @venues = Venue.select {|venue| venue.name.downcase.include?(params[:venue_search].downcase)}
    else
      @venues = Venue.all
    end
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
    @venue.destroy
    redirect_to venues_path
  end

  private

  def find_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :description, :email, :location, :password, :password_confirmation)
  end
end
