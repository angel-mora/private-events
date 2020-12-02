class EventsController < ApplicationController
  include UsersHelper
  before_action :logged_in_user
  before_action :set_event, only: %i[show attend_event]

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
      flash[:success] = 'Congrats on your new event'
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
      flash[:success] = 'Event successfully updated'
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
    @attendees = @event.attendees
  end

  def already_attendee?
    attendees = @event.attendees
    attendees.include?(current_user)
  end

  def attend_event
    if !already_attendee?
      @event.attendees << current_user
      redirect_back fallback_location: :back
      flash[:notice] = 'You are attending this event!'
    else
      redirect_back fallback_location: :back
      flash[:notice] = 'Looks like you are already subscribed.'
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :event_time, :creator_id, :id)
  end
end
