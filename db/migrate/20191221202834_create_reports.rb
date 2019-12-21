class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.integer :test_session_id
      t.integer :grade
      t.string :improvements
    end
  end
end
