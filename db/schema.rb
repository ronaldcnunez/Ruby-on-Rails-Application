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

ActiveRecord::Schema.define(version: 2018_08_23_222924) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.text "description", default: "enter description"
    t.string "email"
    t.string "genre", default: "enter genre"
    t.string "img_url", default: "https://thumbs.dreamstime.com/b/silhouette-rock-band-9219259.jpg"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "artist_id"
    t.integer "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "confirmed_events", force: :cascade do |t|
    t.integer "event_id"
    t.string "venue_name"
    t.string "artist_name"
    t.string "description"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "venue_id"
    t.text "description"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "description"
    t.text "describe your venue"
    t.string "location", default: "somewhere"
    t.string "img_url", default: "https://mediaassets.10news.com/photo/2018/08/14/Screen%20Shot%202018-08-14%20at%204.28.24%20PM_1534289320974.png_94946240_ver1.0_320_240.jpg"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
