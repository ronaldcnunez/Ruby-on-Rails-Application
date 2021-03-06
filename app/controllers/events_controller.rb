class EventsController < ApplicationController
  before_action :find_event, only:  [:show, :edit, :update, :destroy, :confirm]
  skip_before_action :authorized, only: [:index, :show]

  def new
    @venue = current_user
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
      if @event.save
        redirect_to confirmed_events_path
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
    redirect_to confirmed_events_path
  end

  def confirm
    @confirmed_event = ConfirmedEvent.new(event_id: @event.id, venue_id: @event.venue.id, artist_id: @event.artist.id, description: @event.description, date: @event.date)
      if @confirmed_event.save
        @event.update(confirmed: true)
        redirect_to request.referrer
      else
        render :show
      end
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:artist_id, :venue_id, :date, :description, :confirmed)
  end
end
