class RegistrationsController < ApplicationController
  layout "blank"
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "User was successfully created.<br/> Go to <a href='#{root_path}'>login page</a> to access app."
      redirect_to sign_up_path
    else    
      @user.errors.full_messages
      render :new  
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :full_name, :role_id, :password)
  end
end
