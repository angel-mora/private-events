class EventsController < ApplicationController
  before_action :logged_in_user
  
  def index
    @events = Event.all
    @upcoming = Event.to_come
    @past = Event.before_today
  end

  def new
    @event = Event.new
  end

  def create

    @event = Event.where(creator_id: current_user.id).build(event_params)
      
    if @event.save
      flash[:success] = "Congrats on your new event"
      redirect_to @event
    else
      redirect_to root_path
    end
  end

  def edit
    @event = current_user.events.find(params[:id])
  end

  def update
    @events = current_user.events.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:success] = "Event successfully updated"
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event = current_user.events.find(params[:id])
    if @event
      @event.destroy
      flash[:success] = 'Event successfully deleted'
    else
      flash[:alert] = 'Seems like there is an error somewhere'
    end
    redirect_to root_path
  end

  def show
    @event = Event.find(params[:id])
    @attendees = @event.attendees
  end

  def attend_event

  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :event_time, :creator_id)
  end
end

#########################

# events_controller



# application helper
