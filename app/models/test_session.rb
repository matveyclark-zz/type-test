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
    
    # Get the grade of the test
    def test_report_grade
        self.report.grade
    end

    # Show the total time elapsed to complete the test
    def time_elapsed
        start_time = self.start_time
        end_time = self.end_time
        time_elapsed = end_time - start_time
        time_elapsed.round(1)
    end

    # Calculate the words per minute
    def words_per_minute
        word_count = self.user_input.split.length
        wpm = (word_count / self.time_elapsed) * 60
        wpm.round
    end

    # Find the test session with the highest score and return the full name of the user who submitted it
    def self.highest_scoring_student
        highest_test_session = TestSession.all.max_by { |test_session| test_session.report.grade }
        highest_test_session.user
    end

    # Find the student who completed the test the fastest
    def self.student_with_fastest_test_completion
        fastest_session = self.all.min_by { |test_session| test_session.time_elapsed }
        fastest_session.user.to_s
    end

end