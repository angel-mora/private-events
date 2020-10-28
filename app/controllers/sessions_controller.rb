class SessionsController < ApplicationController
  def index
    render 'index'
  end

  def new
    @session = current_user.session.new
  end

  def show
    index
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_back_or user
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to 'index'
  end
end    
