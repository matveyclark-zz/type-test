class ReportsController < ApplicationController

    # View all of the reports for a logged in user
    def index
        @sessions = current_user.all_sessions
    end

    # Create a new report from the params in the test_session show page
    def create
        report = Report.create(report_params)
    end

    private

    def report_params
        params.require(:report).permit(:test_session_id)
    end

end