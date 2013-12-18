class AddPlaceTweaksToObservation < ActiveRecord::Migration
  def change
		add_column :observations, :adjective, :boolean, default: false
		add_column :observations, :not_a_place, :boolean, default: false
		add_column :observations, :notes, :text
		add_column :observations, :order_in_page, :integer
  end
end
