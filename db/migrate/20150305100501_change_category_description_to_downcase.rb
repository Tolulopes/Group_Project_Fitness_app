class ChangeCategoryDescriptionToDowncase < ActiveRecord::Migration
  def change
    remove_column :categories, :Description, :text
    add_column :categories, :description, :text
  end
end
