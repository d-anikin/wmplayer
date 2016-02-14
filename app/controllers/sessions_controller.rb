class SessionsController < ApplicationController
  layout false

  def create
    @user = User.authenticate!(request.env['omniauth.auth'])
    session[:user_id] = @user.id
    render text: "Welcome #{@user.title}"
    # redirect_to root_path
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
