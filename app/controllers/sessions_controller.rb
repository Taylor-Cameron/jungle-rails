class SessionsController < ApplicationController
   def new
  end
  def create
    p params[:session][:email]
    user = User.find_by_email(params[:session][:email])
    p user
    if user && user.authenticate(params[:session][:password])

      session[:user_id] = user.id
      redirect_to '/', notice: "Logged in!"
    else
      flash[:alert] = "Email or password is invalid"
      render "new"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
