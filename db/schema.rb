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

ActiveRecord::Schema.define(version: 20150604235901) do

  create_table "buildings", force: true do |t|
    t.text     "address"
    t.string   "name"
    t.string   "postal_code"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "floors", force: true do |t|
    t.integer  "number"
    t.string   "code"
    t.integer  "building_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "floors", ["building_id"], name: "index_floors_on_building_id"

  create_table "layouts", force: true do |t|
    t.string   "description"
    t.string   "file_location"
    t.integer  "floor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "layouts", ["floor_id"], name: "index_layouts_on_floor_id"

end
