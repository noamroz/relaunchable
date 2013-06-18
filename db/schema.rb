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

ActiveRecord::Schema.define(:version => 20130618101432) do

  create_table "attachments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "to_id"
    t.string   "to_type"
    t.string   "name"
    t.string   "url"
    t.string   "thumbnail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "attachments", ["to_type", "to_id"], :name => "index_attachments_on_to_type_and_to_id"

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "on_id"
    t.string   "on_type"
    t.string   "title"
    t.string   "content",    :limit => 4000
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "comments", ["on_type", "on_id"], :name => "index_comments_on_on_type_and_on_id"

  create_table "lists", :force => true do |t|
    t.string   "view"
    t.string   "set"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "lists", ["set"], :name => "index_lists_on_set"

  create_table "products", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "category_id"
    t.integer  "status_id"
    t.string   "name"
    t.string   "description"
    t.string   "team_description"
    t.string   "failure_reasons"
    t.string   "relauncher_expectations"
    t.string   "assets"
    t.integer  "past_investments"
    t.integer  "estimated_valuation"
    t.integer  "needed_investments"
    t.boolean  "incorporated"
    t.string   "site_url"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "products", ["category_id"], :name => "index_products_on_category_id"
  add_index "products", ["status_id"], :name => "index_products_on_status_id"

  create_table "products_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "product_id"
  end

  add_index "products_users", ["product_id"], :name => "index_products_users_on_product_id"
  add_index "products_users", ["user_id"], :name => "index_products_users_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "visions", :force => true do |t|
    t.integer  "product_id"
    t.integer  "relauncher_id"
    t.string   "plan",            :limit => 4000
    t.string   "team",            :limit => 4000
    t.string   "expectations",    :limit => 4000
    t.string   "availability"
    t.integer  "equity"
    t.integer  "self_investment"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "visions", ["product_id"], :name => "index_visions_on_product_id"

end
