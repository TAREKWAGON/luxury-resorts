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

ActiveRecord::Schema.define(version: 2018_08_03_045253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "start_date"
    t.integer "duration"
    t.integer "price"
    t.bigint "user_id"
    t.bigint "resort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resort_id"], name: "index_bookings_on_resort_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.string "favorited_type"
    t.bigint "favorited_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["favorited_type", "favorited_id"], name: "index_favorites_on_favorited_type_and_favorited_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "feature_resorts", force: :cascade do |t|
    t.bigint "feature_id"
    t.bigint "resort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_feature_resorts_on_feature_id"
    t.index ["resort_id"], name: "index_feature_resorts_on_resort_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resorts", force: :cascade do |t|
    t.string "name"
    t.string "continent"
    t.string "country"
    t.string "address"
    t.string "image"
    t.integer "price"
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "website"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_resorts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_owner"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "resorts"
  add_foreign_key "bookings", "users"
  add_foreign_key "feature_resorts", "features"
  add_foreign_key "feature_resorts", "resorts"
  add_foreign_key "resorts", "users"
end
