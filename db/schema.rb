# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_16_194548) do

  create_table "emp_locations", force: :cascade do |t|
    t.string "current_city"
    t.string "country"
    t.integer "pincode"
    t.integer "employee_table_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_table_id"], name: "index_emp_locations_on_employee_table_id"
  end

  create_table "employee_details", force: :cascade do |t|
    t.integer "employee_id"
    t.string "gender"
    t.string "dob"
    t.integer "contact_number"
    t.integer "employee_table_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_table_id"], name: "index_employee_details_on_employee_table_id"
  end

  create_table "employee_locations", force: :cascade do |t|
    t.integer "Employee_id"
    t.string "current_city"
    t.string "country"
    t.integer "pin_code"
    t.integer "employee_details_id", null: false
    t.integer "employee_table_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_details_id"], name: "index_employee_locations_on_employee_details_id"
    t.index ["employee_table_id"], name: "index_employee_locations_on_employee_table_id"
  end

  create_table "employee_tables", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "emp_locations", "employee_tables"
  add_foreign_key "employee_details", "employee_tables"
  add_foreign_key "employee_locations", "employee_details", column: "employee_details_id"
  add_foreign_key "employee_locations", "employee_tables"
end
