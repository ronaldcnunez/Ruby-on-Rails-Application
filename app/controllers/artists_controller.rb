class ArtistsController < ApplicationController
  skip_before_action :authorized, only: [:new, :index, :create, :show]
  before_action :find_artist, only: [:show, :edit, :update, :destroy]


  def new
    @artist = Artist.new
  end

  def profile
  render :show
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.valid?
      flash[:notice] = "Signup successful! Welcome, #{@artist.name}"
      session[:artist_id] = @artist.id
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def show
  end

  def index
    if params[:artist_search]
      @artists = Artist.select {|artist| artist[:name].downcase.include?(params[:artist_search].downcase)}
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
    redirect_to artists_path
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :description, :email, :genre, :img_url, :password, :password_confirmation)
  end
end
