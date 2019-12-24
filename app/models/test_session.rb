class TestSession < ApplicationRecord
    belongs_to :user
    belongs_to :test

    has_one :report

    # Get the name of the specific test of a test_session
    def test_name
        self.test.name
    end

    # Get the content for an instance of test_session
    def test_content
        self.test.content
    end

    # Get the starting time of the test
    def test_time_track
        Time.now
    end

end