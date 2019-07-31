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

ActiveRecord::Schema.define(version: 2019_07_31_165010) do

  create_table "colleges", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "college_id"
    t.datetime "deadline"
    t.datetime "date_submitted"
    t.string "degree"
    t.string "program"
    t.string "website"
    t.integer "status_id"
    t.string "faculty"
    t.integer "application_cost"
    t.text "lor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "undergrad_college_name"
    t.string "undergrad_major"
    t.string "undergrad_minor"
    t.float "undergrad_gpa"
    t.string "grad_college_name"
    t.string "grad_degree"
    t.float "grad_gpa"
    t.string "gre_scores"
    t.string "gmat_scores"
    t.text "experience"
  end

end
