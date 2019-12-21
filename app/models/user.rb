class User < ApplicationRecord
    has_many :test_sessions
    has_many :tests, through: :test_sessions
end