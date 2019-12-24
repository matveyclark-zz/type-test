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

    # Adds the user input to the test session
    def update
        test_session = TestSession.find(params[:id])
        test_session.update(test_session_params)
        redirect_to test_complete_path
    end

    # Renders the test_complete page to generate report
    def test_complete
        @test_session = TestSession.find(params[:id])
        render 'test_complete'
    end

    private

    # Strong params for test sessions
    def test_session_params
        params.require(:test_session).permit(:user_id, :test_id, :user_input)
    end

end