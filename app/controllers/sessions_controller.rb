class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' #Not quite right!
      render 'new'
    end
  end

  def current_user
    if session[:user_id]
      User.find_by(id: session[:user_id])
    end
  end

  def destroy
  end
end
