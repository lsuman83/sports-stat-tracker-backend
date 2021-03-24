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

ActiveRecord::Schema.define(version: 2021_03_24_170217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "game_stats", force: :cascade do |t|
    t.string "stat_name"
    t.float "stat_value"
    t.bigint "players_id", null: false
    t.bigint "games_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["games_id"], name: "index_game_stats_on_games_id"
    t.index ["players_id"], name: "index_game_stats_on_players_id"
    t.index ["users_id"], name: "index_game_stats_on_users_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "opponent"
    t.date "date"
    t.string "location"
    t.boolean "win"
    t.bigint "players_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "teams_id", null: false
    t.index ["players_id"], name: "index_games_on_players_id"
    t.index ["teams_id"], name: "index_games_on_teams_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.integer "jersey_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "teams_id", null: false
    t.index ["teams_id"], name: "index_players_on_teams_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "sport"
    t.string "league_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "game_stats", "games", column: "games_id"
  add_foreign_key "game_stats", "players", column: "players_id"
  add_foreign_key "game_stats", "users", column: "users_id"
  add_foreign_key "games", "players", column: "players_id"
  add_foreign_key "games", "teams", column: "teams_id"
  add_foreign_key "players", "teams", column: "teams_id"
end
