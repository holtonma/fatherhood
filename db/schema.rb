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

ActiveRecord::Schema.define(:version => 20110106064616) do

  create_table "diapers", :force => true do |t|
    t.datetime "diaper_change_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "note"
    t.string   "result"
  end

  create_table "doctor_visits", :force => true do |t|
    t.datetime "date"
    t.integer  "note_id"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.string   "lname"
    t.string   "fname"
    t.string   "office_name"
    t.string   "website"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeding_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedings", :force => true do |t|
    t.datetime "feeding_time"
    t.integer  "feeding_type_id"
    t.integer  "amount"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "immunizations", :force => true do |t|
    t.integer  "doctor_visit_id"
    t.integer  "note_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temperature_types", :force => true do |t|
    t.string   "name"
    t.integer  "note_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temperatures", :force => true do |t|
    t.integer  "temperature_type_id"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
