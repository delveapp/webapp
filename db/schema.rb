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

ActiveRecord::Schema.define(version: 20151109210714) do

  create_table "categories", force: :cascade do |t|
    t.string "category", limit: 255, null: false
  end

  create_table "menu_item_scores", force: :cascade do |t|
    t.decimal  "score",      precision: 3, scale: 2, default: 0.0, null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "picture_url",        limit: 255
    t.decimal  "price",                          precision: 4, scale: 2
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.integer  "category_id",        limit: 4
    t.integer  "restaurant_id",      limit: 4
    t.integer  "menu_item_score_id", limit: 4
  end

  add_index "menu_items", ["category_id"], name: "fk_rails_85ab260c44", using: :btree
  add_index "menu_items", ["menu_item_score_id"], name: "fk_rails_0943584503", using: :btree
  add_index "menu_items", ["restaurant_id"], name: "fk_rails_56e3e3a67b", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",        limit: 255,                           null: false
    t.decimal  "latitude",                  precision: 9, scale: 6, null: false
    t.decimal  "longitude",                 precision: 9, scale: 6, null: false
    t.string   "picture_url", limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "category_id", limit: 4,                             null: false
  end

  add_index "restaurants", ["category_id"], name: "fk_rails_08f808c5fb", using: :btree

  create_table "user_pictures", force: :cascade do |t|
    t.string   "picture_url",  limit: 255, null: false
    t.datetime "created_at",               null: false
    t.integer  "menu_item_id", limit: 4,   null: false
    t.integer  "user_id",      limit: 4,   null: false
  end

  add_index "user_pictures", ["menu_item_id"], name: "fk_rails_bcaed7c996", using: :btree
  add_index "user_pictures", ["user_id"], name: "fk_rails_30d398c5a4", using: :btree

  create_table "user_scores", force: :cascade do |t|
    t.integer  "score",        limit: 4, default: 0, null: false
    t.datetime "created_at",                         null: false
    t.integer  "user_id",      limit: 4,             null: false
    t.integer  "menu_item_id", limit: 4,             null: false
  end

  add_index "user_scores", ["menu_item_id"], name: "fk_rails_884007de30", using: :btree
  add_index "user_scores", ["user_id"], name: "fk_rails_a4d8a14c25", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,                         default: "", null: false
    t.string   "encrypted_password",     limit: 255,                         default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,                           default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                                              null: false
    t.datetime "updated_at",                                                              null: false
    t.string   "name",                   limit: 255,                         default: "", null: false
    t.decimal  "last_latitude",                      precision: 9, scale: 6
    t.decimal  "last_longitude",                     precision: 9, scale: 6
    t.date     "birthday"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "menu_items", "categories"
  add_foreign_key "menu_items", "menu_item_scores", on_delete: :nullify
  add_foreign_key "menu_items", "restaurants", on_delete: :cascade
  add_foreign_key "restaurants", "categories", on_delete: :cascade
  add_foreign_key "user_pictures", "menu_items", on_delete: :cascade
  add_foreign_key "user_pictures", "users"
  add_foreign_key "user_scores", "menu_items", on_delete: :cascade
  add_foreign_key "user_scores", "users", on_delete: :cascade
end
