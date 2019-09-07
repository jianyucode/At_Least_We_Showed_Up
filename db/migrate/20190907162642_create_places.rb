class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.belongs_to :address, null: false, foreign_key: true
      t.belongs_to :adventure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
