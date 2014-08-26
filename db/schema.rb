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

ActiveRecord::Schema.define(version: 20140826005516) do

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "events", force: true do |t|
    t.date     "event_date"
    t.integer  "year"
    t.string   "event_type"
    t.string   "actor1"
    t.string   "actor2"
    t.integer  "interaction"
    t.string   "country"
    t.string   "source"
    t.text     "notes"
    t.integer  "total_fatalities"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "latitude",         precision: 13, scale: 10
    t.decimal  "longitude",        precision: 13, scale: 10
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "api_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
