class AddZoomToPlace < ActiveRecord::Migration
  def change
    add_column :places, :zoom, :integer, default: 6
  end
end
