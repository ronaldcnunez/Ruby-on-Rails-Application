class ConfirmedEventsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
     @confirmed_events = ConfirmedEvent.all
  end

  def show
  end

  def new
    @confirmed_event = ConfirmedEvent.new
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
