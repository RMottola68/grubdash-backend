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

ActiveRecord::Schema.define(version: 2022_08_03_213458) do

  create_table "liquors", force: :cascade do |t|
    t.integer "price"
    t.string "name"
    t.string "brand"
    t.integer "restaurant_id"
    t.integer "menu_id"
    t.integer "order_id"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "price"
    t.string "name"
    t.string "rating"
    t.integer "restaurant_id"
    t.integer "menu_id"
    t.string "description"
    t.integer "order_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "cuisine"
    t.integer "restaurant_id"
    t.integer "order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.integer "quantity"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "rating"
    t.string "city"
    t.string "price"
  end

end
