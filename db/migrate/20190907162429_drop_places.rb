class DropPlaces < ActiveRecord::Migration[6.0]
  def change
    drop_table :places 
  end
end
