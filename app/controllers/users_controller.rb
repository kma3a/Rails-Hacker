class UsersController < ApplicationController

  def show
  end

  def new
    @user =User.new
  end

  def create
    @user = User.new(params[:user].permit(:username, :email, :password, :password_confirmation))
    if @user.save
      session[:id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

end
