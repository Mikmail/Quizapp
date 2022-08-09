# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_03_121458) do

  create_table "assessment_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "letter"
    t.string "answer"
    t.integer "assessment_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_question_id"], name: "index_assessment_options_on_assessment_question_id"
  end

  create_table "assessment_answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "letter"
    t.string "answer"
    t.boolean "correct"
    t.integer "assessment_question_id"
    t.integer "assessment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_assessment_answers_on_assessment_id"
    t.index ["assessment_question_id"], name: "index_assessment_answers_on_assessment_question_id"
  end

  create_table "assessment_questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean "active"
    t.integer "order"
    t.string "level"
    t.string "question"
    t.string "letter"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end