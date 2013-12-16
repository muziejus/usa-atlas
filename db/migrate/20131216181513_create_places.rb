class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string "name"
      t.text "variants"
      t.float "latitude"
      t.float "longitude"
      t.timestamps
    end
    
    add_column :observations, :place_id, :integer
  end
end
