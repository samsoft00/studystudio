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

ActiveRecord::Schema.define(version: 20160122042036) do

  create_table "courses", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "thumbnail",   limit: 255
    t.boolean  "publish"
    t.string   "slug",        limit: 255
    t.integer  "lecturer_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "courses", ["lecturer_id"], name: "index_courses_on_lecturer_id", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "department_name", limit: 255
    t.integer  "faculty_id",      limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "departments", ["faculty_id"], name: "index_departments_on_faculty_id", using: :btree

  create_table "faculties", force: :cascade do |t|
    t.string   "faculty_name",  limit: 255
    t.integer  "university_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "faculties", ["university_id"], name: "index_faculties_on_university_id", using: :btree

  create_table "lecturers", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "username",               limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "title",                  limit: 255
    t.text     "bio",                    limit: 65535
  end

  add_index "lecturers", ["email"], name: "index_lecturers_on_email", unique: true, using: :btree
  add_index "lecturers", ["reset_password_token"], name: "index_lecturers_on_reset_password_token", unique: true, using: :btree
  add_index "lecturers", ["username"], name: "index_lecturers_on_username", using: :btree

  create_table "universities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "site",       limit: 255
    t.string   "logo",       limit: 255
    t.string   "portal",     limit: 255
    t.string   "subdomain",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "courses", "lecturers"
  add_foreign_key "departments", "faculties"
  add_foreign_key "faculties", "universities"
end
