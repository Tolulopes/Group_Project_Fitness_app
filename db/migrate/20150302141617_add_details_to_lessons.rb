class AddDetailsToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :description, :text
    add_column :lessons, :instructor_id, :integer
    add_column :lessons, :capacity, :integer
    add_column :lessons, :category_id, :integer
  end
end
