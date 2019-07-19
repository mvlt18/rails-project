class UsersController < ApplicationController

  #load the signup form
  def new
    @user = User.new
  end

  #signup a new user
  def create
    @user = User.new(user_params)
    if @user.save
      #login the user
      session[:user_id]=@user.id
      #change this to redirect to submissions index page
      redirect_to '/login'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
