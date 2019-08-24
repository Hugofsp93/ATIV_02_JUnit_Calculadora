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

ActiveRecord::Schema.define(version: 2019_09_04_204236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anagrams", force: :cascade do |t|
    t.string "word_one"
    t.string "word_two"
    t.boolean "is_anagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calcs", force: :cascade do |t|
    t.float "divider"
    t.float "dividend"
    t.float "quotient"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordenators", force: :cascade do |t|
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "palindromes", force: :cascade do |t|
    t.string "phrase"
    t.boolean "is_palindrome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
