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

ActiveRecord::Schema.define(version: 2020_11_26_221945) do

  create_table "AA", primary_key: ["user", "account", "email"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "user", limit: 20, null: false
    t.string "account", limit: 20, null: false
    t.string "pass", limit: 40, null: false
    t.string "email", null: false
    t.string "fullname", null: false
    t.string "address", null: false
    t.decimal "initial_balance", precision: 6, scale: 2, null: false
    t.decimal "current_balance", precision: 6, scale: 2, null: false
    t.datetime "recent", null: false
    t.string "plainpass", limit: 40, null: false
  end

  create_table "AccountsTable", primary_key: "UserId", id: :string, limit: 20, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "PassKey", limit: 20
    t.string "Name", limit: 20
    t.string "Email", limit: 30
    t.text "Address", size: :tiny
    t.string "Cellphone", limit: 15
    t.decimal "Initial", precision: 6, scale: 2
    t.decimal "Current", precision: 6, scale: 2
    t.datetime "Recent_Transactions"
    t.string "Plain_Password", limit: 30
  end

  create_table "Junk", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Name", limit: 20
    t.datetime "Date"
    t.decimal "Amount", precision: 6, scale: 2
    t.index ["Date"], name: "Date", unique: true
    t.index ["Name"], name: "Name", unique: true
  end

  create_table "Sample", primary_key: "Name", id: :string, limit: 20, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "Age"
  end

  create_table "T", primary_key: ["UserId", "Date"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "UserId", limit: 30, default: "", null: false
    t.column "Type", "enum('W','D')", null: false
    t.decimal "Amount", precision: 6, scale: 2, null: false
    t.datetime "Date", null: false
    t.column "Email_Receipt", "enum('Y','N')", null: false
  end

  create_table "TT", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "user", limit: 20, null: false
    t.string "account", limit: 20, null: false
    t.column "type", "enum('W','D')", null: false
    t.decimal "amount", precision: 6, scale: 2, null: false
    t.datetime "date", null: false
    t.column "email_receipt", "enum('Y','N')", null: false
  end

  create_table "TransactionsTable", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "UserId", limit: 20
    t.column "Type", "enum('W','D')"
    t.decimal "Amount", precision: 6, scale: 2
    t.datetime "Date"
    t.column "Email_Receipt", "enum('Y','N')"
    t.index ["UserId", "Date"], name: "UserId", unique: true
    t.index ["UserId", "Date"], name: "UserId_2"
  end

  create_table "UI", primary_key: "idUsers", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "uidUsers", size: :tiny, null: false
    t.text "emailUsers", size: :tiny, null: false
    t.text "pwdUsers", size: :long, null: false
  end

  create_table "USERS", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "id", null: false
    t.string "name", limit: 150, null: false
    t.string "email", limit: 50, null: false
    t.string "phone", limit: 13, null: false
    t.string "address", limit: 200, null: false
    t.string "password", limit: 150, null: false
    t.string "rule", limit: 10, null: false
    t.datetime "reg_date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "last_activity", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "Users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "first_name", limit: 100, null: false
    t.string "last_name", limit: 100, null: false
    t.string "email", limit: 100, null: false
    t.string "password", null: false
    t.string "phone", limit: 15, null: false
    t.string "forgot_pass_identity", limit: 32
    t.datetime "created", null: false
    t.datetime "modified", null: false
    t.column "status", "enum('1','0')", default: "1", null: false
  end

  create_table "booking", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "destination_id", null: false
    t.string "booking_date", limit: 30, null: false
    t.string "journey_date", limit: 30, null: false
    t.integer "train_id", null: false
    t.string "seat_numbers", limit: 150, null: false
    t.integer "passenger_id", null: false
    t.integer "number_of_seat", null: false
    t.string "payment_status", limit: 10, null: false
    t.string "status", limit: 10, null: false
    t.string "note", limit: 220, null: false
  end

  create_table "destinations", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "station_from", null: false
    t.integer "station_to", null: false
    t.integer "train_id", null: false
    t.string "time", limit: 30, null: false
    t.string "status", limit: 20, null: false
    t.string "fare", limit: 5, null: false
    t.datetime "last_activity", null: false
    t.integer "last_modify_by", null: false
    t.integer "total_seat", null: false
    t.string "seat_range", limit: 10, null: false
    t.string "type", limit: 6, null: false
  end

  create_table "eCubed", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Event Name", limit: 100, null: false
    t.text "Description", null: false
    t.date "Date", null: false
    t.string "Link", limit: 100, null: false
  end

  create_table "family_histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
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
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_family_histories_on_patient_id"
  end

  create_table "login", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "username", null: false
    t.string "password", null: false
    t.string "email", null: false
  end

  create_table "medical_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
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
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_medical_records_on_patient_id"
  end

  create_table "members", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "member_id", null: false
    t.string "member_name", null: false, collation: "utf8_general_ci"
    t.string "member_password", limit: 64, null: false
    t.string "member_email", null: false, collation: "utf8_general_ci"
  end

  create_table "notes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_notes_on_patient_id"
  end

  create_table "password_reset_temp", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", limit: 250, null: false
    t.string "key", limit: 250, null: false
    t.datetime "expDate", null: false
  end

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
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
  end

  create_table "pwdReset", primary_key: "pwdResetId", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "pwdResetEmail", null: false
    t.text "pwdResetSelector", null: false
    t.text "pwdResetToken", size: :long, null: false
    t.text "pwdResetExpires", null: false
  end

  create_table "stations", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "address", limit: 70, null: false
    t.string "contact", limit: 20, null: false
  end

  create_table "table_events", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", force: :cascade do |t|
    t.integer "id", null: false
    t.string "title", null: false
    t.datetime "start", null: false
    t.datetime "end"
    t.boolean "status", default: true, null: false, comment: "1=Active, 0=Block"
  end

  create_table "trains", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "code", limit: 30, null: false
    t.string "name", limit: 50, null: false
    t.integer "total_seat", null: false
    t.string "type", limit: 20, default: "intercity", null: false
  end

  create_table "users", primary_key: "idUsers", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "uidUsers", size: :tiny, null: false
    t.text "emailUsers", size: :tiny, null: false
    t.text "pwdUsers", size: :long, null: false
  end

  add_foreign_key "family_histories", "patients"
  add_foreign_key "medical_records", "patients"
  add_foreign_key "notes", "patients"
end
