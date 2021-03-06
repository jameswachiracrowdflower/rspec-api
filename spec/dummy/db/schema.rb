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

ActiveRecord::Schema.define(version: 20131004070828) do

  create_table "artists", force: true do |t|
    t.string   "name"
    t.text     "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists_concerts", id: false, force: true do |t|
    t.integer "artist_id",  null: false
    t.integer "concert_id", null: false
  end

  add_index "artists_concerts", ["concert_id", "artist_id"], name: "index_artists_concerts_on_concert_id_and_artist_id", unique: true

  create_table "concerts", force: true do |t|
    t.string   "where"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
