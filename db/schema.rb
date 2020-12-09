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

ActiveRecord::Schema.define(version: 2020_12_08_002540) do

  create_table "doctors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "family_histories", force: :cascade do |t|
    t.boolean "ans"
    t.boolean "family_cancer"
    t.boolean "family_breast_cancer"
    t.boolean "family_blood_disorder"
    t.boolean "family_sickle_cell"
    t.boolean "neurologic_problem"
    t.boolean "family_strok"
    t.boolean "cardiac_disorder"
    t.boolean "respiratory_disease"
    t.boolean "family_birth_defect"
    t.boolean "family_endocrine"
    t.integer "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_family_histories_on_patient_id"
  end

  create_table "medical_records", force: :cascade do |t|
    t.boolean "aspirin"
    t.boolean "codine"
    t.boolean "penicillin"
    t.boolean "local_anesthesia"
    t.boolean "acrylic"
    t.boolean "latex"
    t.boolean "aids"
    t.boolean "alzhimers"
    t.boolean "asthma"
    t.boolean "blood_disease"
    t.boolean "cancer"
    t.boolean "chest_pains"
    t.boolean "diabetes"
    t.boolean "drug_addiction"
    t.boolean "injuries"
    t.text "comments"
    t.integer "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_medical_records_on_patient_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_notes_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "dob"
    t.string "sex"
    t.string "ssn"
    t.string "email"
    t.string "phone_number"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "doctor_id"
  end

  add_foreign_key "family_histories", "patients"
  add_foreign_key "medical_records", "patients"
  add_foreign_key "notes", "patients"
end
