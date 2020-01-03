class Test < ApplicationRecord
    has_many :test_sessions
    has_many :users, through: :test_sessions

    validates :name, {
        presence: true
    }

    validates :content, {
        presence: true
    }

    validates :language, {
        presence: true
    }

    validates :difficulty, {
        presence: true
    }
end