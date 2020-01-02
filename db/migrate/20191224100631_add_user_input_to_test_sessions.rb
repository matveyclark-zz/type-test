class AddUserInputToTestSessions < ActiveRecord::Migration[5.1]
  def change
    add_column :test_sessions, :user_input, :string, :default => ' '
  end
end
