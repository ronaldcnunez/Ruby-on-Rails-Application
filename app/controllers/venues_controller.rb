class VenuesController < ApplicationController
  before_action :find_venue, only: [:show, :edit, :update, :destroy]

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to @venue
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
    redirect_to venues_page
  end

  private

  def find_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :email, :location)
  end
end
