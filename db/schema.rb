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

ActiveRecord::Schema.define(:version => 20091211031701) do

  create_table "task_lists", :force => true do |t|
    t.string   "title",      :default => ""
    t.boolean  "shared",     :default => false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "task_lists", ["user_id"], :name => "index_task_lists_on_user_id"

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "task_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["task_list_id"], :name => "index_tasks_on_task_list_id"

  create_table "users", :force => true do |t|
    t.text     "username"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "encrypted_password", :limit => 40, :null => false
    t.string   "password_salt",      :limit => 20, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "watches", :force => true do |t|
    t.integer  "user_id"
    t.integer  "task_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "watches", ["task_list_id"], :name => "index_watches_on_task_list_id"
  add_index "watches", ["user_id"], :name => "index_watches_on_user_id"

end
