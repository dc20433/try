# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_03_11_011841) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "charts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "obj"
    t.bigint "regit_id", null: false
    t.string "subj"
    t.string "t_date"
    t.datetime "updated_at", null: false
    t.index ["regit_id"], name: "index_charts_on_regit_id"
  end

  create_table "regits", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "dob"
    t.string "gender"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "rigits", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "dob"
    t.string "firstname"
    t.string "gender"
    t.string "lastname"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "charts", "regits"
end
