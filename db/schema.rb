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

ActiveRecord::Schema[7.2].define(version: 2024_07_15_202209) do
  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makeup_products", force: :cascade do |t|
    t.string "product_name"
    t.integer "product_category_id"
    t.string "product_tags"
    t.integer "brand_id"
    t.decimal "price"
    t.text "description"
    t.string "tag_list"
    t.string "product_api_url"
    t.string "api_featured_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "product_type"
    t.string "product_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
