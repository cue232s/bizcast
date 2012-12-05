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

ActiveRecord::Schema.define(:version => 20121205044731) do

  create_table "business_profiles", :force => true do |t|
    t.string   "business_name"
    t.string   "address"
    t.string   "zipcode"
    t.string   "state"
    t.string   "country_code"
    t.text     "description"
    t.string   "email"
    t.string   "phone"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "cards", :force => true do |t|
    t.string   "business_name"
    t.integer  "user_id"
    t.string   "message_title"
    t.text     "message_description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "publish_date"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                              :null => false
    t.string   "fname",                              :null => false
    t.string   "lname",                              :null => false
    t.string   "username",                           :null => false
    t.string   "gender"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "birthday"
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
