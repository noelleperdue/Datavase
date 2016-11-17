class CreateMapMarkers < ActiveRecord::Migration[5.0]
  def change
    create_table :map_markers do |t|
      t.decimal :lat
      t.decimal :lng
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
