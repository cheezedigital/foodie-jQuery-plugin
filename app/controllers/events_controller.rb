class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    end
  end

  def event_params
    params.require(:event).permit(:title, :all_day, :starts_at, :ends_at, :url, :color)
  end
end
