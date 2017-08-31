class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.date :scheduled_at
      t.references :customer, foreign_key: true
      t.timestamps
    end
  end
end
