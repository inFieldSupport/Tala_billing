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

ActiveRecord::Schema[7.0].define(version: 2023_01_24_061730) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.float "total_amount"
    t.date "date_of_bill"
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_bills_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standards", force: :cascade do |t|
    t.string "standard_name"
    t.string "standard_type"
    t.float "standard_price"
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active_standard"
    t.index ["client_id"], name: "index_standards_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "user_type"
    t.float "user_price"
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active_user"
    t.index ["client_id"], name: "index_users_on_client_id"
  end

  add_foreign_key "bills", "clients"
  add_foreign_key "standards", "clients"
  add_foreign_key "users", "clients"
end
