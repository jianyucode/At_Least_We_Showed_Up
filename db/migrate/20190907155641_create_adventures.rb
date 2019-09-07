class CreateAdventures < ActiveRecord::Migration[6.0]
  def change
    create_table :adventures do |t|
      t.string :name
      t.string :is_roadtrip

      t.timestamps
    end
  end
end
