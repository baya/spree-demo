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

ActiveRecord::Schema.define(version: 20150922120220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "state_name"
    t.string   "alternative_phone"
    t.string   "company"
    t.integer  "state_id"
    t.integer  "country_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "addresses_users", force: :cascade do |t|
    t.integer  "address_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "variant_id"
    t.integer  "order_id"
    t.integer  "quantity",                           null: false
    t.decimal  "price",      precision: 8, scale: 2, null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.text     "description"
    t.boolean  "active",      default: true
    t.string   "environment", default: "development"
    t.datetime "deleted_at"
    t.string   "display_on"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "payments", force: :cascade do |t|
    t.decimal  "amount",            precision: 8, scale: 2, default: 0.0, null: false
    t.integer  "order_id"
    t.integer  "source_id"
    t.string   "source_type"
    t.integer  "payment_method_id"
    t.string   "state"
    t.string   "response_code"
    t.string   "avs_response"
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.string   "tracking"
    t.string   "number"
    t.decimal  "cost",               precision: 8, scale: 2
    t.datetime "shipped_at"
    t.integer  "order_id"
    t.integer  "shipping_method_id"
    t.integer  "address_id"
    t.string   "state"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "shipping_methods", force: :cascade do |t|
    t.string   "name"
    t.integer  "zone_id"
    t.string   "display_on"
    t.integer  "shipping_category_id"
    t.boolean  "match_none"
    t.boolean  "match_all"
    t.boolean  "match_one"
    t.datetime "deleted_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "spree_orders", force: :cascade do |t|
    t.string   "number",               limit: 15
    t.decimal  "item_total",                      precision: 8, scale: 2, default: 0.0, null: false
    t.decimal  "total",                           precision: 8, scale: 2, default: 0.0, null: false
    t.string   "state"
    t.decimal  "adjustment_total",                precision: 8, scale: 2, default: 0.0, null: false
    t.integer  "user_id"
    t.datetime "completed_at"
    t.integer  "bill_address_id"
    t.integer  "ship_address_id"
    t.decimal  "payment_total",                   precision: 8, scale: 2, default: 0.0
    t.integer  "shipping_method_id"
    t.string   "shipment_state"
    t.string   "payment_state"
    t.string   "email"
    t.text     "special_instructions"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
  end

end
