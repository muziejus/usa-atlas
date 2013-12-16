class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.text "text"
      t.string "place"
      t.boolean "dialogue", default: false
      t.timestamps
    end
  end
end
