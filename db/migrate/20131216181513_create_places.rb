class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string "name"
      t.text "variants"
      t.float "latitude"
      t.float "longitude"
      t.timestamps
    end
    
    remove_column :observations, :place
    add_column :observations, :place_id, :integer
    add_column :observations, :place_name, :string
  end
end
