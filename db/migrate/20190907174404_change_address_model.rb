class ChangeAddressModel < ActiveRecord::Migration[6.0]
  def change
    remove_column :places, :address_id
  end
end
