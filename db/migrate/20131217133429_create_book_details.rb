class CreateBookDetails < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string "name"
      t.string "subhead"
      t.integer "first_page"
      t.integer "last_page"
      t.integer "book_id"
      t.integer "mode_id"
      t.timestamps
    end
    
    create_table :books do |t|
      t.string "name"
      t.integer "first_page"
      t.integer "last_page"
      t.timestamps
    end
    
    create_table :profiles do |t|
      t.string "historical_name"
      t.string "wikipedia_url"
      t.integer "chapter_id"
      t.timestamps
    end
    
  end
end
