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

ActiveRecord::Schema.define(version: 2018_10_18_183435) do

  create_table "campeonatos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clubes", force: :cascade do |t|
    t.string "name"
    t.integer "birth"
    t.integer "campeonato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campeonato_id"], name: "index_clubes_on_campeonato_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "birth"
    t.integer "clube_id"
    t.integer "trophy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clube_id"], name: "index_players_on_clube_id"
  end

end