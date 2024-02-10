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

ActiveRecord::Schema[7.1].define(version: 2024_02_06_103500) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string "name", null: false
    t.string "measurement_unit"
    t.decimal "price", default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_foods_on_name", unique: true
  end

  create_table "inventories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["name"], name: "index_inventories_on_name", unique: true
    t.index ["user_id"], name: "index_inventories_on_user_id"
  end

  create_table "inventory_foods", force: :cascade do |t|
    t.integer "quantity", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "inventory_id", null: false
    t.bigint "food_id", null: false
    t.index ["food_id"], name: "index_inventory_foods_on_food_id"
    t.index ["inventory_id", "food_id"], name: "index_inventory_foods_on_inventory_id_and_food_id", unique: true
    t.index ["inventory_id"], name: "index_inventory_foods_on_inventory_id"
  end

  create_table "recipe_foods", force: :cascade do |t|
    t.decimal "quantity", default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id", null: false
    t.bigint "food_id", null: false
    t.index ["food_id"], name: "index_recipe_foods_on_food_id"
    t.index ["recipe_id", "food_id"], name: "index_recipe_foods_on_recipe_id_and_food_id", unique: true
    t.index ["recipe_id"], name: "index_recipe_foods_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "preparation_time"
    t.decimal "cooking_time"
    t.text "description"
    t.boolean "public", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["name"], name: "index_recipes_on_name", unique: true
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  add_foreign_key "inventories", "users"
  add_foreign_key "inventory_foods", "foods"
  add_foreign_key "inventory_foods", "inventories"
  add_foreign_key "recipe_foods", "foods"
  add_foreign_key "recipe_foods", "recipes"
  add_foreign_key "recipes", "users"
end