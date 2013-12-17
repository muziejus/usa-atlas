class AddOtherAssociationsToObservation < ActiveRecord::Migration
  def change
		add_column :observations, :chapter_id, :integer
		add_column :observations, :book_id, :integer
		add_column :observations, :place_name_in_text, :string
  end
end
