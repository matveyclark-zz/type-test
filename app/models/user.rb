class User < ApplicationRecord
    has_many :test_sessions
    has_many :tests, through: :test_sessions
    has_secure_password

    # Get all test sessions for current user
    def all_sessions
        @sessions = self.test_sessions
    end
end