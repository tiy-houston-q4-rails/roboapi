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

ActiveRecord::Schema.define(version: 20141118133557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "missions", force: true do |t|
    t.string   "name"
    t.boolean  "classified"
    t.date     "mission_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "robot_missions", force: true do |t|
    t.integer  "robot_id"
    t.integer  "mission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "robot_missions", ["mission_id"], name: "index_robot_missions_on_mission_id", using: :btree
  add_index "robot_missions", ["robot_id"], name: "index_robot_missions_on_robot_id", using: :btree

  create_table "robots", force: true do |t|
    t.string   "name"
    t.string   "skills"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
