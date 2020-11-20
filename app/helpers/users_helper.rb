module UsersHelper
    def show_error
        return unless @user.errors.any?

        error_list = ''
        @user.errors.full_messages.each do |error|
            error_list << "<li class='error-message'>#{error}</li>"
        end
    end
end
