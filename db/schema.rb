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

ActiveRecord::Schema.define(version: 20181009182320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goals", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", null: false
    t.integer "target_speed", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals_pitches", id: false, force: :cascade do |t|
    t.bigint "goal_id", null: false
    t.bigint "pitch_id", null: false
    t.index ["goal_id", "pitch_id"], name: "index_goals_pitches_on_goal_id_and_pitch_id"
    t.index ["pitch_id", "goal_id"], name: "index_goals_pitches_on_pitch_id_and_goal_id"
  end

  create_table "pitches", force: :cascade do |t|
    t.integer "user_id"
    t.string "pitch_code"
    t.string "staff"
    t.string "name"
    t.integer "octave"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer "speed", null: false
    t.string "resultable_type", null: false
    t.bigint "resultable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resultable_type", "resultable_id"], name: "index_results_on_resultable_type_and_resultable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "username", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
