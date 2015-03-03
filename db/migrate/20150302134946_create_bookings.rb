class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :lesson_id
      t.string :status

      t.timestamps null: false
    end
  end
end
