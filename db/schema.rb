ActiveRecord::Schema.define(version: 20171201025305) do

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
    t.string "name", limit: 64, null: false
    t.text "description", limit: 1023, null: false
    t.decimal "time", null: false
    t.integer "price", null: false
    t.integer "timezone", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_plans_on_name"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment", limit: 280, default: " ", null: false
    t.decimal "valuation", precision: 1, scale: 1, default: "3.0", null: false
    t.integer "plan_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id", "created_at"], name: "idx_reviews_01"
    t.index ["plan_id", "user_id"], name: "ui_reviews_01", unique: true
  end

  create_table "spots", force: :cascade do |t|
    t.string "spot_name", limit: 32, null: false
    t.string "address", limit: 140, null: false
    t.decimal "spot_time", null: false
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index [nil, "address"], name: "ui_spots_01", unique: true
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", limit: 16, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "uq_tags_01", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 25, null: false
    t.string "email", null: false
    t.string "password", limit: 20, null: false
    t.text "profile", limit: 140, default: " ", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "uq_users_02", unique: true
    t.index ["name"], name: "uq_users_01", unique: true
  end

end
