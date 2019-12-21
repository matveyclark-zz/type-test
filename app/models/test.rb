class Test < ApplicationRecord
    has_many :test_sessions
    has_many :users, through: :test_sessions
end