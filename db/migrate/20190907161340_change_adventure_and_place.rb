class ChangeAdventureAndPlace < ActiveRecord::Migration[6.0]
  def change
    remove_column :adventures, :place_id
  end
end
