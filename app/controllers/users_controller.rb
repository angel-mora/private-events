class UsersController < ApplicationController
  before_action :logged_in_user, only: [:show]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
      flash[:success] = 'Welcome to our events!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @events = Event.where(creator_id: current_user.id) # @user.events
    @attended_events = Event.where(attendee_id: current_user.id) # @user.attended_events
    @to_come = Event.where(creator_id: current_user.id).to_come # @user.events.to_come
    @before_today = Event.where(creator_id: current_user.id).before_today
    @upcoming = Event.to_come
    @past = Event.before_today
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
