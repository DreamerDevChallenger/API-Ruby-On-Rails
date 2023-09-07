# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_06_164054) do
  create_table "movie_lists", force: :cascade do |t|
    t.float "movie_rating"
    t.string "movie_title"
    t.string "movie_description"
    t.string "movie_categories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.float  "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secret_menu_items", force: :cascade do |t|
    t.string "menu_name"
    t.string "restaurant_name"
    t.string "menu_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
