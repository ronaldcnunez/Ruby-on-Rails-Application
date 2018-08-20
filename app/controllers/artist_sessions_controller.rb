class ArtistSessionsController < ApplicationController
  def new
    @artistsession = ArtistSession.new
  end

  def create
    @artistsession = ArtistSession.create
  end

  def delete
    @artistsession = ArtistSession.find(params[:id])
    @artistsession.destroy
  end
end
