class UserController < ApplicationController
  def new
    @user = User.new
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

