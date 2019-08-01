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
      #redirect to submissions index page
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  #display user profile show page
  def show
    @user = User.find_by_id(params[:id])
    #rescue code if user id does not exist, redirect to root path.
    redirect_to '/' if !@user
  end

  #load edit form
  def edit
    @user = User.find_by_id(params[:id])
  end

  #update the user profile
  def update
    user = User.find_by_id(params[:id])
    user.update(user_params)
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :undergrad_college_name, :undergrad_major, :undergrad_minor, :undergrad_gpa, :grad_college_name, :grad_degree, :grad_gpa, :gre_scores, :gmat_scores, :experience)
  end

end
