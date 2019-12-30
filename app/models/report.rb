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
        grade.round(1)
    end

    # Get the elapsed time for the report's test session
    def report_time_elapsed
        self.test_session.time_elapsed
    end

    # Get words per minute for the reports test_session
    def report_words_per_minute
        self.test_session.words_per_minute
    end

    # Get amount of type user could type war and peace
    def minutes_to_write_war_and_peace
        587287 / self.report_words_per_minute
    end

    # Show how the users test accuracy relates to them
    def relation_to_average_typing_speed
        result = self.report_words_per_minute.to_f / 41
        result.round(2)
    end

    # Show the relation to the average typist if user is slower
    def slower_relation_to_average_typist
        result = 1 - self.relation_to_average_typing_speed
        result.round(2)
    end

    # Compare users speed to the fastest typist in the world
    def fastest_in_the_world?
        result = 216 / self.report_words_per_minute.to_f
        result.round(2)
    end

end