class TestSession < ApplicationRecord
    belongs_to :user
    belongs_to :test

    has_one :report
end