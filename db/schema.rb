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

ActiveRecord::Schema.define(:version => 20120428022803) do

  create_table "companies", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "representative_id"
    t.string   "representative_role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_addresses", :force => true do |t|
    t.integer  "emailable_id"
    t.string   "emailable_type"
    t.string   "label"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "email_addresses", ["emailable_id"], :name => "index_email_addresses_on_emailable_id"

  create_table "notes", :force => true do |t|
    t.integer  "notable_id"
    t.string   "notable_type"
    t.string   "subject"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "occupation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_numbers", :force => true do |t|
    t.integer  "callable_id"
    t.string   "callable_type"
    t.string   "label"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phone_numbers", ["callable_id"], :name => "index_phone_numbers_on_callable_id"

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "websites", :force => true do |t|
    t.integer  "linkable_id"
    t.string   "linkable_type"
    t.string   "domain"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "websites", ["linkable_id"], :name => "index_websites_on_linkable_id"

end
