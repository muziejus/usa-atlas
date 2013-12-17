class AddGeocodingNotesToPlace < ActiveRecord::Migration
  def change
		add_column :places, :geocoding_notes, :text
  end
end
