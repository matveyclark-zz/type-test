class SessionsController < ApplicationController

 # Create a new session for returning users
 def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to home_path
    else
        redirect_to login_path
    end
 end

 def destroy
    session.delete(:user_id)
    session[:user_id] = nil
    redirect_to home_path
 end

end