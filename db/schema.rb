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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141202043055) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.datetime "synchronized_at"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "alumnos", :force => true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "identifier"
    t.decimal  "amount",          :precision => 8, :scale => 2
    t.string   "card_number"
    t.string   "card_type"
    t.string   "card_company"
    t.datetime "created_at",                                                       :null => false
    t.datetime "updated_at",                                                       :null => false
    t.string   "padma_id"
    t.string   "instructor"
    t.string   "plan"
    t.string   "due_date"
    t.boolean  "payed",                                         :default => false
    t.string   "payment"
    t.string   "observations"
    t.string   "bill"
    t.boolean  "active",                                        :default => true
    t.boolean  "new_debit",                                     :default => true
    t.integer  "card_company_id"
    t.text     "secret"
    t.binary   "secret_key"
    t.binary   "secret_iv"
    t.integer  "account_id"
  end

  create_table "card_companies", :force => true do |t|
    t.string   "establishment"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "name"
    t.string   "description"
    t.integer  "responsible_id"
  end

  create_table "google_users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  create_table "presentations", :force => true do |t|
    t.integer  "account_id"
    t.integer  "card_company_id"
    t.text     "summary"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "responsibles", :force => true do |t|
    t.integer  "account_id"
    t.string   "username"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                  :default => false
    t.integer  "current_account_id"
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
