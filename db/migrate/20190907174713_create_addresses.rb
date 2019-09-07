class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.float :lat
      t.float :long
      t.belongs_to :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
