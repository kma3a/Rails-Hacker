class SessionsController < ApplicationController
  protect_from_forgery

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:id]=@user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    session.destroy
    redirect_to posts_path
  end

end
