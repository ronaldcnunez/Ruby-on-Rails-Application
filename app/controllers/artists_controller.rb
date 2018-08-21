class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit, :update, :destroy]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.valid?
      @artist.save
       ArtistMailer.signup_email(@artist).deliver
        flash[:notice] = "Artist was successfully created. You are one step closer to independence!"
      redirect_to @artist
    else
      render :new
    end
  end

  def show
  end

  def index
    if params[:artist_search]
      @artists = Artist.select {|artist| artist.name.downcase.include?(params[:artist_search].downcase)}
    else
      @artists = Artist.all
    end
  end

  def edit
  end

  def update
    if @artist.update
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_page
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :email)
  end
end
