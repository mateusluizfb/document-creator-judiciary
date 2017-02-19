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

ActiveRecord::Schema.define(version: 20170219202123) do

  create_table "judiciary_processes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nu_process"
    t.date     "year_process"
    t.string   "action"
    t.date     "court_hearing_date"
    t.time     "court_hearing_time"
    t.string   "court_heearing_type"
    t.string   "free_justice"
    t.string   "author_gender"
    t.string   "cpf_represetant"
    t.string   "author_address"
    t.string   "cep_author_city"
    t.string   "assintant_pa"
    t.string   "gender_part_defendant"
    t.string   "defendent_gender"
    t.string   "defendent_name"
    t.string   "defendent_address"
    t.string   "cep_defendent_city"
    t.string   "pr_representant"
    t.string   "pr_assitant"
    t.string   "func_public"
    t.string   "bank_agency"
    t.string   "bank_account"
    t.string   "initial_order"
    t.string   "occupation"
    t.string   "defendant_employer"
    t.string   "employer_address"
    t.string   "cep_employer_city"
    t.string   "occupational_treatment"
    t.string   "paying_sector_type"
    t.string   "employer_2"
    t.string   "cep_employer_city_2"
    t.string   "occupational_treatment_2"
    t.string   "func_public_employer"
    t.string   "cpf_rg_rep_pa"
    t.string   "cpf_rg_part_defendent"
    t.string   "number_benef_inss_of1"
    t.string   "number_benef_inss_of2"
    t.string   "judge_gender"
    t.string   "judge_name"
    t.string   "prosecutor_gender"
    t.string   "prosecutor_name"
    t.string   "lawyer_gender_author"
    t.string   "lawyer_author"
    t.string   "lawyer_gender_pr"
    t.string   "lawyer_defendent"
    t.text     "opnion",                   limit: 65535
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
