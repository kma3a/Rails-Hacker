module SessionsHelper
  def current_user
    @user ||= User.find(session[:id])
  end
end
