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

ActiveRecord::Schema.define(version: 20170904200631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "case_assignments", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_case_assignments_on_doctor_id", using: :btree
    t.index ["patient_id"], name: "index_case_assignments_on_patient_id", using: :btree
  end

  create_table "diagnostics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "adress"
    t.string   "zip_code"
    t.string   "city"
    t.string   "country"
    t.string   "description"
    t.integer  "avatar"
    t.string   "url"
    t.string   "phone_number"
    t.string   "specialty"
    t.string   "RPPS"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.index ["email"], name: "index_doctors_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true, using: :btree
  end

  create_table "message_templates", force: :cascade do |t|
    t.string   "subject"
    t.string   "content"
    t.integer  "diagnostic_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["diagnostic_id"], name: "index_message_templates_on_diagnostic_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "subject"
    t.string   "content"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_messages_on_patient_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "email"
    t.string   "zip_code"
    t.string   "city"
    t.string   "country"
    t.integer  "age"
    t.string   "loss_start_date"
    t.string   "relative"
    t.integer  "weekly_shampoo"
    t.string   "dandruff"
    t.string   "greasy_hair"
    t.string   "refined_hair"
    t.string   "brushing_hair"
    t.string   "shaving_hair"
    t.string   "scalp_density"
    t.string   "hair_thickness"
    t.string   "hair_color"
    t.string   "hair_type"
    t.string   "vitamines"
    t.string   "minoxidil"
    t.integer  "minoxidil_doses"
    t.string   "finasteride"
    t.string   "hair_transplant"
    t.string   "hair_transplant_technic"
    t.string   "stage"
    t.string   "traction_test"
    t.string   "restore_area"
    t.string   "technical_preference"
    t.string   "remark"
    t.integer  "doctor_id"
    t.string   "status"
    t.integer  "diagnostic_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "price_cents",             default: 2000, null: false
    t.boolean  "paid"
    t.json     "payment"
    t.index ["diagnostic_id"], name: "index_patients_on_diagnostic_id", using: :btree
    t.index ["doctor_id"], name: "index_patients_on_doctor_id", using: :btree
  end

  add_foreign_key "case_assignments", "doctors"
  add_foreign_key "case_assignments", "patients"
  add_foreign_key "message_templates", "diagnostics"
  add_foreign_key "messages", "patients"
  add_foreign_key "patients", "diagnostics"
  add_foreign_key "patients", "doctors"
end
