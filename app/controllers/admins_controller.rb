class AdminsController < ApplicationController

    def dashboard
        @admin = Admin.find_by(id: session[:admin_id])
        @users = User.all
        @test_sessions = TestSession.all
        @tests = Test.all
        @reports = Report.all
    end

end 