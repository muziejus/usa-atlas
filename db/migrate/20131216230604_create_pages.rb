class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :number
      t.timestamps
    end

    add_column :observations, :page_id, :integer
  end
end
