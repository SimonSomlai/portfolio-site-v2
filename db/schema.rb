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

ActiveRecord::Schema.define(version: 20160214205217) do

  create_table "admins", force: :cascade do |t|
    t.string   "username",         limit: 255, null: false
    t.string   "email",            limit: 255, null: false
    t.string   "crypted_password", limit: 255, null: false
    t.string   "salt",             limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",               null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "projects", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.string   "subtitle",            limit: 255
    t.text     "description"
    t.string   "features",            limit: 255
    t.string   "link",                limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "image1_file_name",    limit: 255
    t.string   "image1_content_type", limit: 255
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.string   "image2_file_name",    limit: 255
    t.string   "image2_content_type", limit: 255
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name",    limit: 255
    t.string   "image3_content_type", limit: 255
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name",    limit: 255
    t.string   "image4_content_type", limit: 255
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
    t.string   "slug",                limit: 255
    t.text     "endescription"
  end

  add_index "projects", ["slug"], name: "index_projects_on_slug", unique: true

  create_table "reviews", force: :cascade do |t|
    t.text     "quote"
    t.string   "name",             limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "bio_file_name",    limit: 255
    t.string   "bio_content_type", limit: 255
    t.integer  "bio_file_size"
    t.datetime "bio_updated_at"
    t.text     "enquote"
  end

end
