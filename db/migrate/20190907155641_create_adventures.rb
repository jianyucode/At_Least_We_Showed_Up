class CreateAdventures < ActiveRecord::Migration[6.0]
  def change
    create_table :adventures do |t|
      t.string :name
      t.belongs_to :place, null: false, foreign_key: true
      t.string :is_roadtrip

      t.timestamps
    end
  end
end
