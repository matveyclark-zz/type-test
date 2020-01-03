class AdminsController < ApplicationController

    # Pass necessary variables to create accounts/tests in the dashboard
    def dashboard
        @user = User.new
        @test = Test.new
    end

    # Seporate method that creates a User without signing out the Admin
    def create_user
        @user = User.create(user_params)
        if @user.valid?
            flash[:user_notice] = 'User has been successfully created.'
            redirect_to admin_dashboard_path
        else
            render 'dashboard'
        end
    end

    # Create a test for the whole system
    def create_test
        @test = Test.create(test_params)
        if @test.valid?
            flash[:test_notice] = 'The test has been successfully created.'
            redirect_to admin_dashboard_path
        else
            render 'dashboard'
        end
    end

    private

    # Strong params for the user
    def user_params
        params.require(:user).permit(:first_name, :last_name, :age, :username, :password)
    end

    # Strong params for the test
    def test_params
        params.require(:test).permit(:name, :content, :language, :difficulty)
    end
end 