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

ActiveRecord::Schema.define(version: 20140320003509) do

  create_table "families", force: true do |t|
    t.string   "common_name"
    t.string   "family_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "varieties", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "vegetable_id"
    t.date     "indoor_start"
    t.date     "indoor_end"
    t.date     "under_cover_start"
    t.date     "under_cover_end"
    t.date     "cold_frame_start"
    t.date     "cold_frame_end"
    t.date     "sow_plant_start"
    t.date     "sow_plant_end"
    t.date     "overwinter_start"
    t.date     "overwinter_end"
    t.date     "harvest_start"
    t.date     "harvest_end"
    t.float    "depth"
    t.float    "space_plants"
    t.float    "space_rows"
    t.float    "ph_high"
    t.float    "ph_low"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "varieties", ["vegetable_id"], name: "index_varieties_on_vegetable_id"

  create_table "vegetables", force: true do |t|
    t.string   "name"
    t.integer  "family_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
