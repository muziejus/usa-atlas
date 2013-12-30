# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131230145255) do

  create_table "books", force: true do |t|
    t.string   "name"
    t.integer  "first_page"
    t.integer  "last_page"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chapters", force: true do |t|
    t.string   "name"
    t.string   "subhead"
    t.integer  "first_page"
    t.integer  "last_page"
    t.integer  "book_id"
    t.integer  "mode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "observations", force: true do |t|
    t.text     "text"
    t.boolean  "dialogue",           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place_id"
    t.string   "place_name"
    t.integer  "page_id",            default: 0
    t.integer  "mode_id",            default: 0
    t.integer  "chapter_id"
    t.integer  "book_id"
    t.string   "place_name_in_text"
    t.boolean  "adjective",          default: false
    t.boolean  "not_a_place",        default: false
    t.text     "notes"
    t.integer  "order_in_page",      default: 0
  end

  create_table "pages", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: true do |t|
    t.string   "name"
    t.text     "variants"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "geocoding_notes"
  end

  create_table "profiles", force: true do |t|
    t.string   "historical_name"
    t.string   "wikipedia_url"
    t.integer  "chapter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
