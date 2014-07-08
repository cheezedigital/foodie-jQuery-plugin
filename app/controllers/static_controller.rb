class StaticController < ApplicationController
  def home
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    end
  end
  def places
    respond_to do |format|
      format.html do
        render :home
      end
      format.json do
        render json: {name: 'Jeremy'}
      end
    end
  end

  def contact
    
  end


end
