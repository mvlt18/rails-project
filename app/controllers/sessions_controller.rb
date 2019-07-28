class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if auth_hash = request.env["omniauth.auth"]
      #They logged in via OAuth
      @user = User.find_or_create_by_omniauth(auth_hash)
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      #Normal login via email + password
      @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
          session[:user_id] = @user.id
          redirect_to user_path(@user)
        else
          redirect_to '/login'
        end
    end
  end

  def home
  end

  def destroy
    session.clear
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
