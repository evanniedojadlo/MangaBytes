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

ActiveRecord::Schema.define(version: 20140325002601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genres", ["name"], name: "index_genres_on_name", using: :btree

  create_table "manga_genres", force: true do |t|
    t.integer  "manga_id"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "manga_genres", ["manga_id", "genre_id"], name: "index_manga_genres_on_manga_id_and_genre_id", using: :btree

  create_table "manga_volume_images", force: true do |t|
    t.string   "image"
    t.integer  "display_order"
    t.integer  "manga_volume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manga_volumes", force: true do |t|
    t.string   "authors"
    t.datetime "publish_date"
    t.integer  "manga_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mangas", force: true do |t|
    t.string   "title"
    t.string   "image"
    t.date     "start_publish_date"
    t.date     "end_publish_date"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mangas", ["end_publish_date"], name: "index_mangas_on_end_publish_date", using: :btree
  add_index "mangas", ["start_publish_date"], name: "index_mangas_on_start_publish_date", using: :btree
  add_index "mangas", ["title"], name: "index_mangas_on_title", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
