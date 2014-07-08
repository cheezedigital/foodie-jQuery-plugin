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
        render json: {name: 'Justin'}
      end
    end
  end

  def contact # if we don't call .deliver then rails won't send the email.
    if request.post? #take the name of class, and call name of mailer action, and pass any params, and call .deliver.
      NotificationMailer.contact_form(params).deliver #creates an instance on the mailer class
      redirect_to root_path
    end
  end

  def login 
    UserMailer.welcome('dude@party.house').deliver
    redirect_to root_path
  end
end
