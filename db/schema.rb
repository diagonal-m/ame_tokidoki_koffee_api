# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_01_21_120734) do

  create_table "coffee_bean_detail_page_urls", force: :cascade do |t|
    t.string "url", null: false
    t.integer "coffee_store_id", null: false
    t.integer "formatting_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_store_id"], name: "index_coffee_bean_detail_page_urls_on_coffee_store_id"
    t.index ["formatting_id_id"], name: "index_coffee_bean_detail_page_urls_on_formatting_id_id"
  end

  create_table "coffee_stores", force: :cascade do |t|
    t.string "store_name", null: false
    t.string "station"
    t.string "beans_page_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "format_statuses", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.integer "coffee_bean_detail_page_url_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_bean_detail_page_url_id"], name: "index_format_statuses_on_coffee_bean_detail_page_url_id"
  end

  create_table "formattings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "coffee_bean_detail_page_urls", "coffee_stores"
  add_foreign_key "coffee_bean_detail_page_urls", "formatting_ids"
  add_foreign_key "format_statuses", "coffee_bean_detail_page_urls"
end
