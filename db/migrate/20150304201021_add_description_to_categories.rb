class AddDescriptionToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :Description, :text
  end
end
