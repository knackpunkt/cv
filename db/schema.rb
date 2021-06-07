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

ActiveRecord::Schema.define(version: 20210607000243) do

  create_table "anschreibens", force: :cascade do |t|
    t.string "name"
    t.string "adess"
    t.string "plz"
    t.string "city"
    t.string "company_name"
    t.string "comapay_adress"
    t.string "company_city"
    t.string "bewerbung"
    t.string "stelle"
    t.date "datum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plzz"
  end

  create_table "article_categories", force: :cascade do |t|
    t.integer "article_id"
    t.integer "category_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cvs", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "postcode"
    t.string "phone"
    t.string "email"
    t.date "birth"
    t.string "nationality"
    t.string "facebook"
    t.string "linkedin"
    t.string "degree"
    t.string "uni"
    t.string "grade"
    t.date "year"
    t.string "degree1"
    t.string "uni1"
    t.string "grade1"
    t.date "year1"
    t.string "degree2"
    t.string "uni2"
    t.string "grade2"
    t.date "year2"
    t.string "degree3"
    t.string "uni3"
    t.string "grade3"
    t.date "year3"
    t.string "degree4"
    t.string "uni4"
    t.string "grade4"
    t.date "year4"
    t.string "degree5"
    t.string "uni5"
    t.string "grade5"
    t.date "year5"
    t.string "company"
    t.string "jobtitle"
    t.date "start"
    t.date "end"
    t.text "detail"
    t.string "company1"
    t.string "jobtitle1"
    t.date "start1"
    t.date "end1"
    t.text "detail1"
    t.string "company2"
    t.string "jobtitle2"
    t.date "start2"
    t.date "end2"
    t.text "detail2"
    t.string "company3"
    t.string "jobtitle3"
    t.date "start3"
    t.date "end3"
    t.text "detail3"
    t.string "skill"
    t.string "level"
    t.string "skill1"
    t.string "level1"
    t.string "skill2"
    t.string "level2"
    t.string "skill3"
    t.string "level3"
    t.string "skill4"
    t.string "level4"
    t.string "skill5"
    t.string "level5"
    t.string "skill6"
    t.string "level6"
    t.string "skill7"
    t.string "level7"
    t.string "skill8"
    t.string "level8"
    t.string "skill9"
    t.string "level9"
    t.string "language"
    t.string "levela"
    t.string "language1"
    t.string "levelb"
    t.string "language2"
    t.string "levelc"
    t.string "language3"
    t.string "leveld"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "yea"
    t.string "yea1"
    t.string "yea2"
    t.string "yea3"
    t.string "yea4"
    t.string "yea5"
    t.string "yea6"
    t.string "yea7"
    t.string "yea8"
    t.string "yea9"
    t.string "yea10"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "requirement"
    t.string "email"
    t.string "location"
    t.string "start"
    t.string "salary"
    t.string "job_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lebenslaufs", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "postcode"
    t.string "phone"
    t.string "email"
    t.date "birth"
    t.string "nationality"
    t.string "facebook"
    t.string "linkedin"
    t.string "degree"
    t.string "uni"
    t.string "grade"
    t.string "year"
    t.string "degree1"
    t.string "uni1"
    t.string "grade1"
    t.string "year1"
    t.string "degree2"
    t.string "uni2"
    t.string "grade2"
    t.string "year2"
    t.string "degree3"
    t.string "uni3"
    t.string "grade3"
    t.string "year3"
    t.string "degree4"
    t.string "uni4"
    t.string "grade4"
    t.string "year4"
    t.string "degree5"
    t.string "uni5"
    t.string "grade5"
    t.string "year5"
    t.string "company"
    t.string "jobtitle"
    t.string "start"
    t.string "end"
    t.text "detail"
    t.string "company1"
    t.string "jobtitle1"
    t.string "start1"
    t.string "end1"
    t.text "detail1"
    t.string "company2"
    t.string "jobtitle2"
    t.string "start2"
    t.string "end2"
    t.text "detail2"
    t.string "company3"
    t.string "jobtitle3"
    t.string "start3"
    t.string "end3"
    t.text "detail3"
    t.string "skill"
    t.string "skill1"
    t.string "skill2"
    t.string "skill3"
    t.string "skill4"
    t.string "skill5"
    t.string "skill6"
    t.string "skill7"
    t.string "language"
    t.string "niveau"
    t.string "language1"
    t.string "niveau1"
    t.string "language2"
    t.string "niveau2"
    t.string "language3"
    t.string "niveau3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "trainings", force: :cascade do |t|
    t.text "frage"
    t.text "antwort"
    t.string "job_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
