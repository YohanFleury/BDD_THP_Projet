# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_22_164117) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
  end

  create_table "dog_sitters", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.index ["city_id"], name: "index_dog_sitters_on_city_id"
  end

  create_table "dog_strolls", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "stroll_id"
    t.index ["dog_id"], name: "index_dog_strolls_on_dog_id"
    t.index ["stroll_id"], name: "index_dog_strolls_on_stroll_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.index ["city_id"], name: "index_dogs_on_city_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.integer "dog_sitter_id"
    t.datetime "date"
    t.integer "city_id"
    t.index ["city_id"], name: "index_strolls_on_city_id"
    t.index ["dog_sitter_id"], name: "index_strolls_on_dog_sitter_id"
  end

end
