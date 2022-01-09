class RegistrationsController < ApplicationController
  layout "blank"
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to sign_in_path
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
