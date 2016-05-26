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

ActiveRecord::Schema.define(version: 0) do

  create_table "departments", force: :cascade do |t|
    t.text     "name"
    t.text     "phone"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "person_id"
    t.text     "title"
    t.boolean  "supported",     default: false
    t.text     "phone"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["department_id"], name: "index_employees_on_department_id"
  add_index "employees", ["person_id"], name: "index_employees_on_person_id"

  create_table "items", force: :cascade do |t|
    t.text     "serial"
    t.integer  "model_id"
    t.integer  "manufacturer_id"
    t.integer  "purchase_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["manufacturer_id"], name: "index_items_on_manufacturer_id"
  add_index "items", ["model_id"], name: "index_items_on_model_id"
  add_index "items", ["purchase_id"], name: "index_items_on_purchase_id"

  create_table "manufacturers", force: :cascade do |t|
    t.text "name"
  end

  create_table "models", force: :cascade do |t|
    t.text "name"
  end

  create_table "owners", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "item_id"
    t.integer  "type_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "owners", ["department_id"], name: "index_owners_on_department_id"
  add_index "owners", ["item_id"], name: "index_owners_on_item_id"
  add_index "owners", ["type_id"], name: "index_owners_on_type_id"

  create_table "people", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "nickname"
  end

  create_table "purchases", force: :cascade do |t|
    t.text    "order"
    t.date    "date"
    t.integer "price"
    t.date    "create_on"
  end

  create_table "types", force: :cascade do |t|
    t.text "status"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "item_id"
    t.integer  "type_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["item_id"], name: "index_users_on_item_id"
  add_index "users", ["person_id"], name: "index_users_on_person_id"
  add_index "users", ["type_id"], name: "index_users_on_type_id"

end
