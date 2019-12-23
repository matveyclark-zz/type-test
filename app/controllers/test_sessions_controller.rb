class TestSessionsController < ApplicationController

    # Create a test sessions with the current user and test id
    def create
        test_session = TestSession.create(test_session_params)
        redirect_to test_session_path(test_session)
    end

    # Show the actual test session and send results
    def show
        @test_session = TestSession.find(params[:id])
    end

    private

    # Strong params for test sessions
    def test_session_params
        params.require(:test).permit(:user_id, :test_id)
    end

end