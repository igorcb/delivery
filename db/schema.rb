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

ActiveRecord::Schema.define(:version => 20130709143355) do

  create_table "branches", :force => true do |t|
    t.string   "description",   :limit => 100, :null => false
    t.string   "cnpj",          :limit => 14,  :null => false
    t.string   "adress",        :limit => 100, :null => false
    t.string   "district",      :limit => 60,  :null => false
    t.string   "city",          :limit => 60,  :null => false
    t.string   "state",         :limit => 60,  :null => false
    t.string   "zip",           :limit => 8,   :null => false
    t.string   "complement",    :limit => 100
    t.string   "number_adress", :limit => 20,  :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "enterprise_id"
  end

  create_table "categories", :force => true do |t|
    t.integer  "enterprise_id"
    t.string   "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "enterprises", :force => true do |t|
    t.string   "description", :limit => 100, :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "description", :limit => 100, :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id",                                               :null => false
    t.string   "name",        :limit => 120,                                :null => false
    t.text     "description"
    t.decimal  "price",                      :precision => 12, :scale => 2
    t.datetime "created_at",                                                :null => false
    t.datetime "updated_at",                                                :null => false
  end

end
