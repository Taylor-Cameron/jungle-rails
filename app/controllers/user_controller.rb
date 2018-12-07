class UserController < ApplicationController
  def new
    @user = User.new
  end

  def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/user/login'
    end
  end

  def create
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    redirect_to '/'
  else
    redirect_to '/signup'
    redirect_to '/login'
  end
end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
  private
    def user_params
  params.permit(:name, :email, :password, :password_confirmation)
  end
end

