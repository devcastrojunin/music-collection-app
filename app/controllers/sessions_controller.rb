class SessionsController < ApplicationController
  layout "blank"
  
  def new
    flash[:error] = nil
  end

  def create
    user = User.find_by(username: params[:username])
    

    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:error] = nil
      redirect_to root_path
    else
        flash[:error] = "Sorry, we couldn't find an account with this username. Please check you're using the right username and try again."
        render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:error] = nil
    redirect_to sign_in_path
  end
end
