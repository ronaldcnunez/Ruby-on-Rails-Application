class ArtistsessionsController < ApplicationController
  def new
    @artistsession
  end
  def create
    @artistsessions = Artist
  end
end
