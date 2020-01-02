class AdminSessionsController < ApplicationController

    # Find a created Admin account and log them in
    def create
        admin = Admin.find_by(username: params[:username])
        if admin && admin.authenticate(params[:password])
            session[:admin_id] = admin.id
            redirect_to home_path
        else
            flash[:notice] = 'Sorry, we cant find an admin account with that username or password.'
            redirect_to admin_login_path
        end
    end

    # Log the admin out
    def destroy
        session.delete(:admin_id)
        session[:admin_id] = nil
        redirect_to home_path
    end

end