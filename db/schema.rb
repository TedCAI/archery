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

ActiveRecord::Schema.define(version: 20171009022319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "membership_record_details", force: :cascade do |t|
    t.integer "membership_record_id"
    t.integer "membership_score_policy_id"
  end

  create_table "membership_records", force: :cascade do |t|
    t.integer "user_id"
    t.integer "previous_id"
    t.datetime "record_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "membership_score_policies", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "uid"
    t.string "email"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end