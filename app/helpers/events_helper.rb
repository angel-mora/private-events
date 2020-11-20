module EventsHelper
    def attend_event
        if !already_attendee?
          @event.attendees << current_user
          redirect_back fallback_location: :back
          flash[:notice] = 'You are attending this event!'
        else
          redirect_back fallback_location: :back
          flash[:notice] = 'Looks like you are already suscribed.'
        end
      end
end
