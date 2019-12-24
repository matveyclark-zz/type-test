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
end