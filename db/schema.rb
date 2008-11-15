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

ActiveRecord::Schema.define(:version => 20081115042840) do

  create_table "countries", :force => true do |t|
    t.integer  "region_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_player_countries", :force => true do |t|
    t.integer  "game_player_id"
    t.integer  "country_id"
    t.integer  "armies",         :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_players", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "armies_to_allocate", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.integer  "current_player"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "world_id"
  end

  create_table "neighbours", :force => true do |t|
    t.integer  "country_id"
    t.integer  "neighbour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.integer  "world_id"
    t.string   "name"
    t.integer  "bonus"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "colour",     :default => ""
  end

  create_table "worlds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
