# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170907224745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "title",              null: false
    t.date     "release_date",       null: false
    t.string   "musician",           null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "annotations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "track_id"
    t.text     "body"
    t.integer  "start_idx"
    t.integer  "end_idx"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "annotations", ["start_idx", "end_idx"], name: "index_annotations_on_start_idx_and_end_idx", unique: true, using: :btree

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "track_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["user_id", "track_id"], name: "index_favorites_on_user_id_and_track_id", unique: true, using: :btree

  create_table "tracks", force: :cascade do |t|
    t.integer "album_id", null: false
    t.string  "title",    null: false
    t.string  "features"
    t.string  "producer"
    t.text    "lyrics",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "session_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
