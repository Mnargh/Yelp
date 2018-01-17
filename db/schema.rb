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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180117153201) do
=======
ActiveRecord::Schema.define(version: 20180117150033) do
>>>>>>> 993aa0d2e8c469152c7cad6a6481ded247b1a481

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "reviews", force: :cascade do |t|
    t.text "comment"
    t.integer "rating"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
=======
  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> 993aa0d2e8c469152c7cad6a6481ded247b1a481
  end

end
