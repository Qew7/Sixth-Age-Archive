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

ActiveRecord::Schema[8.0].define(version: 2025_12_05_214808) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "armies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "source"
    t.string "book_cover_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "army_list_units", force: :cascade do |t|
    t.bigint "army_list_id", null: false
    t.bigint "unit_id", null: false
    t.integer "quantity"
    t.jsonb "upgrades_selected"
    t.integer "calculated_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["army_list_id"], name: "index_army_list_units_on_army_list_id"
    t.index ["unit_id"], name: "index_army_list_units_on_unit_id"
  end

  create_table "army_lists", force: :cascade do |t|
    t.string "name"
    t.bigint "army_id", null: false
    t.bigint "game_format_id", null: false
    t.integer "total_points"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["army_id"], name: "index_army_lists_on_army_id"
    t.index ["game_format_id"], name: "index_army_lists_on_game_format_id"
  end

  create_table "game_formats", force: :cascade do |t|
    t.string "name"
    t.integer "points_limit"
    t.jsonb "restrictions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rulebooks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "category"
    t.string "source"
    t.string "cover_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_rules", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.bigint "army_id", null: false
    t.string "name"
    t.string "unit_type"
    t.integer "base_cost"
    t.integer "min_size"
    t.integer "max_size"
    t.integer "cost_per_model"
    t.jsonb "stats"
    t.text "special_rules"
    t.jsonb "equipment"
    t.jsonb "upgrades"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "base_size"
    t.index ["army_id"], name: "index_units_on_army_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "army_list_units", "army_lists"
  add_foreign_key "army_list_units", "units"
  add_foreign_key "army_lists", "armies"
  add_foreign_key "army_lists", "game_formats"
  add_foreign_key "units", "armies"
end
