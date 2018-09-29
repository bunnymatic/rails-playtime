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

ActiveRecord::Schema.define(version: 2018_09_29_165953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fund_companies", force: :cascade do |t|
    t.bigint "container_company_id"
    t.bigint "company_in_fund_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_in_fund_id"], name: "index_fund_companies_on_company_in_fund_id"
    t.index ["container_company_id"], name: "index_fund_companies_on_container_company_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_toys", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "toy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_toys_on_person_id"
    t.index ["toy_id"], name: "index_person_toys_on_toy_id"
  end

  create_table "toys", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "person_toys", "people"
  add_foreign_key "person_toys", "toys"
end
