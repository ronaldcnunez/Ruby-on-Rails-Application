class ArtistSessionsController < ApplicationController

  def new
  end

  def create
    artist = Artist.find_by(email: params[:session][:email].downcase)
    if artist && artist.authenticate(params[:session][:password])
      log_in artist
      redirect_to artist
      else
      flash[:danger] = 'Invalid email/password combination'
      render :new
    end
  end

  def show
  end

  def index
    @artists = Artist.all
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
    log_out
      redirect_to root_url
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :email)
  end
end
