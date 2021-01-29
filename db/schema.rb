
ActiveRecord::Schema.define(version: 2021_01_28_221129) do

  create_table "user_ratings", force: :cascade do |t|
    t.integer "rating"
    t.integer "hero_journey"
    t.integer "power_fantasy"
    t.integer "world_building"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
