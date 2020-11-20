class ApplicationController < ActionController::Base
  include SessionsHelper
  include UsersHelper

  def already_attendee?
    attendees = @event.attendees
    attendees.include?(current_user)
  end

  private

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in." 
      redirect_to login_url
    end
  end
end
