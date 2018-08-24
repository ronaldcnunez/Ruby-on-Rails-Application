 class ArtistSessionsController < ApplicationController
   skip_before_action :authorized, except: :destroy

  def new
    render :new
  end

  def create
    @artist = Artist.find_by({ email: params[:email] })
    if !!@artist && @artist.authenticate(params[:password])
      flash[:notice] = "Successfully logged in #{@artist.name}!"
      session[:artist_id] = @artist.id
      redirect_to artist_path(@artist)
    else
     flash[:notice] = "Invalid username or password"
     redirect_to artist_login_path
    end
  end

  def destroy
    session.delete(:artist_id)
    redirect_to root_path
  end
 end
