class Admin::SessionsController < ApplicationController

  def new 
    @user = User.new
    render :new
  end

  def create 
    user_params = params.require(:user).permit(:email, :password)
    @user = User.confirm(user_params)

    if @user
      login(@user)
      redirect_to "/admin"
    else
      redirect_to "/admin/login"
    end
  end

  def destroy
    logout
    redirect_to "/admin/login"
  end

end
