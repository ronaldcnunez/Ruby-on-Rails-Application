class ConfirmedEventsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
     @confirmed_events = ConfirmedEvent.all
  end

  def show
  end

  def new
    @event = Event.find(set_event)
    @confirmed_event = ConfirmedEvents.new
  end

  private

  def set_event
    @event = event.find(params[:id])
  end
end
