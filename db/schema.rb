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

ActiveRecord::Schema.define(:version => 20131211021230) do

  create_table "events", :force => true do |t|
    t.string   "event_name"
    t.string   "performers"
    t.string   "venue"
    t.string   "address"
    t.date     "date_time"
    t.string   "repeat_info"
    t.string   "cost"
    t.text     "details"
    t.string   "picture_url"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "time"
  end

  add_index "events", ["date_time"], :name => "index_events_on_date_time"

end
