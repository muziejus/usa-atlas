class RemoveFieldsFromObservation < ActiveRecord::Migration
  def change
		remove_column :observations, :place_name, :string
		remove_column :observations, :book_id, :integer
  end
end
