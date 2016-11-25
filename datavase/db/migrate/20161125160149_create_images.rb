class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :plant_name
      t.text :link
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
