class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to links_path, flash[:notice] = "Logged in!"
    else
      flash.now[:notice] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to links_path, flash[:notice] = "Logged out!"
  end
end
