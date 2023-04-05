# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_04_03_134721) do

  create_table "coffee_bean_detail_pages", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "coffee_bean_id", null: false
    t.string "url", null: false, comment: "商品ページURL"
    t.string "s3_path", comment: "s3パス"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_bean_id"], name: "index_coffee_bean_detail_pages_on_coffee_bean_id"
  end

  create_table "coffee_bean_taste_notes", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "coffee_bean_id", null: false
    t.bigint "taste_note_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_bean_id"], name: "index_coffee_bean_taste_notes_on_coffee_bean_id"
    t.index ["taste_note_id"], name: "index_coffee_bean_taste_notes_on_taste_note_id"
  end

  create_table "coffee_beans", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "coffee_store_id", null: false
    t.string "name", null: false, comment: "コーヒー名"
    t.string "country", comment: "国名"
    t.string "plantation", comment: "農園名"
    t.string "variety", comment: "品種"
    t.integer "roasted", comment: "焙煎度"
    t.string "processing", comment: "プロセス"
    t.string "altitude", comment: "標高"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_store_id"], name: "index_coffee_beans_on_coffee_store_id"
  end

  create_table "coffee_stores", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false, comment: "店名"
    t.string "location", comment: "住所"
    t.string "online_store_url", comment: "オンラインストアURL"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "new_releases", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "coffee_bean_id", null: false
    t.integer "price", comment: "価格"
    t.string "net", comment: "量"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_bean_id"], name: "index_new_releases_on_coffee_bean_id"
  end

  create_table "taste_notes", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "coffee_bean_detail_pages", "coffee_beans"
  add_foreign_key "coffee_bean_taste_notes", "coffee_beans"
  add_foreign_key "coffee_bean_taste_notes", "taste_notes"
  add_foreign_key "coffee_beans", "coffee_stores"
  add_foreign_key "new_releases", "coffee_beans"
end
