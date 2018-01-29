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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180119100121) do

  create_table "aircrafts", force: :cascade do |t|
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "current_airport_id"
    t.integer "place_id"
    t.index ["current_airport_id"], name: "index_aircrafts_on_current_airport_id"
    t.index ["place_id"], name: "index_aircrafts_on_place_id"
  end

  create_table "aircrafts_routes", force: :cascade do |t|
    t.integer "aircraft_id"
    t.integer "route_id"
  end

  create_table "airports", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airports_routes", force: :cascade do |t|
    t.integer "airport_id"
    t.integer "route_id"
    t.integer "position"
  end

  create_table "places", force: :cascade do |t|
    t.string "title"
    t.integer "economy_seats"
    t.integer "comfort_seats"
    t.integer "business_seats"
    t.integer "aircraft_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_places_on_aircraft_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "aircraft_id"
    t.index ["aircraft_id"], name: "index_tickets_on_aircraft_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
