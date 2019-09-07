class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.float :long
      t.float :lat

      t.timestamps
    end
  end
end
