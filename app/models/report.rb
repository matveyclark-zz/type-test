class Report < ApplicationRecord
    belongs_to :test_session

    # Find the user for a specific report
    def user
        self.test_session.user
    end

    # Find specific test for the report
    def test
        self.test_session.test
    end

    # Find test name for a specific report
    def test_name
        test.name
    end

    # Produce a percentage grade for the test using the similar_text gem
    def test_grade
        input = self.test_session.user_input
        test_content = test.content
        grade = input.similar(test_content)
        grade
    end

    # Get the elapsed time for the report's test session
    def report_time_elapsed
        self.test_session.time_elapsed
    end

    # Get words per minute for the reports test_session
    def report_words_per_minute
        self.test_session.words_per_minute
    end

end