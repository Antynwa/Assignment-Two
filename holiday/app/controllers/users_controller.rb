class UsersController < ApplicationController
  def new
    @user = User.new
  end

def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to holidays_path
    else
      render :action => 'new'
    end
  end
end
