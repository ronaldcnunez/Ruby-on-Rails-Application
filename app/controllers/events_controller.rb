class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorized, only: [:index, :show]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def show
  end

  def index
    @events = Event.all
  end

  def edit
  end

  def update
    if @event.update
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end


  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:artist_id, :venue_id, :date, :verified)
  end

  def set_venue
    @venue = venue.find(params[:id])
  end

end
