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

ActiveRecord::Schema.define(version: 2020_01_03_055849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "parking_spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "start_time"
    t.time "end_time"
    t.float "total_price"
    t.date "date"
    t.index ["parking_spot_id"], name: "index_bookings_on_parking_spot_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.bigint "account_id"
    t.boolean "seen", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notification_type"
    t.string "content"
    t.integer "sent_by"
    t.integer "received_by"
    t.integer "booking_number"
    t.index ["account_id"], name: "index_notifications_on_account_id"
  end

  create_table "parking_spots", force: :cascade do |t|
    t.string "description"
    t.bigint "user_id"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "address"
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.float "price"
    t.index ["user_id"], name: "index_parking_spots_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.text "content"
    t.bigint "user_id"
    t.bigint "parking_spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parking_spot_id"], name: "index_reviews_on_parking_spot_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.string "photo"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "bookings", "parking_spots"
  add_foreign_key "bookings", "users"
  add_foreign_key "notifications", "accounts"
  add_foreign_key "parking_spots", "users"
  add_foreign_key "reviews", "parking_spots"
  add_foreign_key "reviews", "users"
end
