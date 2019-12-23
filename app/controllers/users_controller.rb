class UsersController < ApplicationController 

    # Provide user instance for the 'form_for' form helper
    def new
        @user = User.new
    end

    # Create a new User to the database and activate a session
    def create
        user = User.create(user_params)
        session[:user_id] = user.id
        redirect_to home_path
    end

    private

    # Strong params for the users
    def user_params
        params.require(:user).permit(:username, :password, :first_name, :last_name, :age)
    end

end