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

ActiveRecord::Schema.define(version: 20180117131351) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "plan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "plan_id"], name: "ui_favorites_01", unique: true
  end

  create_table "plan_spots", force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "spot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id", "spot_id"], name: "ui_plan_spots_01", unique: true
  end

  create_table "plan_tags", force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id", "tag_id"], name: "ui_plan_tags_01", unique: true
  end

  create_table "plans", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.decimal "time", null: false
    t.integer "price", null: false
    t.integer "time_category", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "idx_plans_01"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment", null: false
    t.decimal "valuation", null: false
    t.integer "plan_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id", "user_id"], name: "ui_reviews_01", unique: true
  end

  create_table "spots", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.integer "spot_time", null: false
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "uq_tags_01", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.text "profile"
    t.index ["email"], name: "uq_users_02", unique: true
    t.index ["name"], name: "uq_users_01", unique: true
  end

end
