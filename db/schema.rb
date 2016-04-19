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

ActiveRecord::Schema.define(version: 20160419015707) do

  create_table "hashtags", force: :cascade do |t|
    t.string   "hashtag",                null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "count",      default: 0, null: false
  end

  add_index "hashtags", ["hashtag"], name: "index_hashtags_on_hashtag"

  create_table "messages", force: :cascade do |t|
    t.string   "body",       limit: 141, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "message_id", null: false
    t.integer  "hashtag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["hashtag_id"], name: "index_taggings_on_hashtag_id"
  add_index "taggings", ["message_id"], name: "index_taggings_on_message_id"

end
