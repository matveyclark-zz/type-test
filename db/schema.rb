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

ActiveRecord::Schema.define(version: 20200102155538) do

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "test_session_id"
    t.integer "grade"
  end

  create_table "test_sessions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "test_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "user_input", default: " "
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.string "language"
    t.string "difficulty"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
  end

end
