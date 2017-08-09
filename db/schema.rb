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

ActiveRecord::Schema.define(version: 20170722034814) do

  create_table "diaries", force: :cascade do |t|
    t.date "record_date", null: false
    t.decimal "total", default: "0.0"
    t.decimal "rent", default: "0.0"
    t.decimal "electric", default: "0.0"
    t.decimal "water", default: "0.0"
    t.decimal "communicate", default: "0.0"
    t.decimal "gas", default: "0.0"
    t.decimal "traffic", default: "0.0"
    t.text "rent_log"
    t.text "electric_log"
    t.text "water_log"
    t.text "communicate_log"
    t.text "gas_log"
    t.text "traffic_log"
    t.decimal "rice", default: "0.0"
    t.decimal "bread", default: "0.0"
    t.decimal "fish", default: "0.0"
    t.decimal "meat", default: "0.0"
    t.decimal "egg", default: "0.0"
    t.decimal "soy", default: "0.0"
    t.decimal "beans", default: "0.0"
    t.decimal "vegetable", default: "0.0"
    t.decimal "dry", default: "0.0"
    t.decimal "processed", default: "0.0"
    t.decimal "seasoning", default: "0.0"
    t.decimal "pastry", default: "0.0"
    t.decimal "fruit", default: "0.0"
    t.decimal "beverage", default: "0.0"
    t.decimal "out", default: "0.0"
    t.decimal "other_food", default: "0.0"
    t.text "rice_log"
    t.text "bread_log"
    t.text "fish_log"
    t.text "meat_log"
    t.text "egg_log"
    t.text "soy_log"
    t.text "beans_log"
    t.text "vegetable_log"
    t.text "dry_log"
    t.text "processed_log"
    t.text "seasoning_log"
    t.text "pastry_log"
    t.text "fruit_log"
    t.text "beverage_log"
    t.text "out_log"
    t.text "other_food_log"
    t.decimal "houseware", default: "0.0"
    t.decimal "kitchenware", default: "0.0"
    t.decimal "cleaning", default: "0.0"
    t.decimal "hobby", default: "0.0"
    t.decimal "cosmetics", default: "0.0"
    t.decimal "clothing", default: "0.0"
    t.text "houseware_log"
    t.text "kitchenware_log"
    t.text "cleaning_log"
    t.text "hobby_log"
    t.text "cosmetics_log"
    t.text "clothing_log"
    t.decimal "furniture", default: "0.0"
    t.decimal "consumer_electronics", default: "0.0"
    t.text "furniture_log"
    t.text "consumer_electronics_log"
    t.decimal "other", default: "0.0"
    t.text "other_log"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "months", force: :cascade do |t|
    t.date "record_month", null: false
    t.decimal "income", default: "0.0"
    t.text "income_log", default: "0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
