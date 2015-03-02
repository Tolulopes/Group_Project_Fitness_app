class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :lesson_id
      t.integer :rating
      t.text :comment

      t.timestamps null: false
    end
  end
end
