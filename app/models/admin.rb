class Admin < ApplicationRecord
    has_secure_password

    def most_successful_student
        @reports.first
    end
end