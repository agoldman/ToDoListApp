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

ActiveRecord::Schema.define(:version => 20130405214038) do

  create_table "items", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "completed"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "items", ["project_id"], :name => "index_items_on_project_id"
  add_index "items", ["title"], :name => "index_items_on_title"

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "team_id"
  end

  add_index "projects", ["team_id"], :name => "index_projects_on_team_id"
  add_index "projects", ["title"], :name => "index_projects_on_title"

  create_table "team_memberships", :force => true do |t|
    t.integer  "user_id"
    t.string   "team_id"
    t.string   "integer"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "team_memberships", ["team_id"], :name => "index_team_memberships_on_team_id"
  add_index "team_memberships", ["user_id"], :name => "index_team_memberships_on_user_id"

  create_table "teams", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "teammembership_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
