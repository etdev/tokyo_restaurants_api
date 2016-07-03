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

ActiveRecord::Schema.define(version: 20160703081201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "area_restaurants", force: :cascade do |t|
    t.integer  "area_id",       null: false
    t.integer  "restaurant_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["area_id"], name: "index_area_restaurants_on_area_id", using: :btree
    t.index ["restaurant_id"], name: "index_area_restaurants_on_restaurant_id", using: :btree
  end

  create_table "areas", force: :cascade do |t|
    t.string   "name",                              null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "featured",          default: false, null: false
    t.string   "primary_code",                      null: false
    t.string   "secondary_code",                    null: false
    t.string   "english_name"
    t.string   "thumbnail"
    t.integer  "restaurants_count", default: 0,     null: false
  end

  create_table "genre_restaurants", force: :cascade do |t|
    t.integer  "genre_id",      null: false
    t.integer  "restaurant_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["genre_id"], name: "index_genre_restaurants_on_genre_id", using: :btree
    t.index ["restaurant_id"], name: "index_genre_restaurants_on_restaurant_id", using: :btree
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "eng_name",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "url",          null: false
    t.integer  "price_range",  null: false
    t.float    "rating",       null: false
    t.integer  "review_count", null: false
    t.string   "thumbnail"
    t.text     "description"
    t.string   "holiday"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["price_range"], name: "index_restaurants_on_price_range", using: :btree
  end

  add_foreign_key "area_restaurants", "areas"
  add_foreign_key "area_restaurants", "restaurants"
  add_foreign_key "genre_restaurants", "genres"
  add_foreign_key "genre_restaurants", "restaurants"
end
