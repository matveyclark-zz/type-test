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

    # Show the total time elapsed to complete the test
    def time_elapsed
        start_time = self.test_session[:start_time]
        end_time = self.test_session[:end_time]
        time_elapsed = end_time - start_time
        time_elapsed
    end
end