class CreateModes < ActiveRecord::Migration
  def change
    create_table :modes do |t|
      t.string :name
      t.timestamps
    end

  add_column :observations, :mode_id, :integer

  end
end
