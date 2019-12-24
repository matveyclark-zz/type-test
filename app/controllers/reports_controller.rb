class ReportsController < ApplicationController

    # View all of the reports for a logged in user
    def index
        @sessions = current_user.all_sessions
    end

    # Show an individual report
    def show
        @report = Report.find(params[:id])
    end

    # Create a new report from the params in the test_session show page
    def create
        report = Report.create(report_params)
        report[:grade] = report.test_grade
        report.save
        redirect_to report_path(report)
    end

    private

    # Strong params for reports
    def report_params
        params.require(:report).permit(:test_session_id)
    end

end