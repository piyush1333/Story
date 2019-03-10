class SessionsController < ApplicationController
  def new

  end

  def create
    # user_email = User.find_by(email: params[:session][:email].downcase)
    # user_pass = User.find_by(password: params[:session][:password])
    @user = User.find_by(email:params[:session][:email],password:params[:session][:password])
    if @user
      log_in @user

      redirect_to dashboard_path
    else
      redirect_to root_path
    end

  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end

