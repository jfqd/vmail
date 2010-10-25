# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090512081719) do

  create_table "accounts", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "accounts", ["login"], :name => "index_accounts_on_login", :unique => true

  create_table "aliases", :force => true do |t|
    t.string   "address"
    t.string   "goto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "domain_id"
    t.boolean  "active",     :default => false
    t.integer  "user_id"
  end

  add_index "aliases", ["address"], :name => "index_aliases_on_address"

  create_table "domains", :force => true do |t|
    t.string   "domain"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",     :default => false
  end

  add_index "domains", ["domain"], :name => "index_domains_on_domain"

  create_table "users", :force => true do |t|
    t.string   "address"
    t.string   "password"
    t.string   "maildir"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "domain_id"
    t.string   "realm",      :default => ""
    t.boolean  "active",     :default => true
    t.string   "name",       :default => ""
  end

  add_index "users", ["address"], :name => "index_users_on_address"

end
