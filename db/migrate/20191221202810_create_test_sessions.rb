class CreateTestSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :test_sessions do |t|
      t.integer :user_id
      t.integer :test_id
      t.datetime :start_time
      t.datetime :end_time
    end
  end
end
