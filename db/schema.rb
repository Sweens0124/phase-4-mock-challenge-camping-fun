ActiveRecord::Schema.define(version: 2022_07_25_142234) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.integer "difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "campers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "signups", force: :cascade do |t|
    t.integer "time"
    t.integer "activity_id", null: false
    t.integer "camper_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_signups_on_activity_id"
    t.index ["camper_id"], name: "index_signups_on_camper_id"
  end

  add_foreign_key "signups", "activities"
  add_foreign_key "signups", "campers"
end
