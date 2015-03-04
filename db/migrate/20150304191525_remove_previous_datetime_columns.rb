class RemovePreviousDatetimeColumns < ActiveRecord::Migration
  def change
    remove_column :lessons, :start_time, :datetime
    remove_column :lessons, :end_time, :datetime
  end
end
