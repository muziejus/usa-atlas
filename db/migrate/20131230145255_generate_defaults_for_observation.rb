class GenerateDefaultsForObservation < ActiveRecord::Migration
  def change
    change_column :observations, :order_in_page, :integer, {default: 0}
    change_column :observations, :mode_id, :integer, {default: 0}
    change_column :observations, :page_id, :integer, {default: 0}
  end
end
