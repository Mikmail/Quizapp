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

ActiveRecord::Schema.define(version: 2022_08_09_105156) do

  create_table "answer_options", force: :cascade do |t|
    t.text "answer_text"
    t.integer "question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "correct_answer", default: false, null: false
  end

  create_table "answer_options_user_quiz_submissions", force: :cascade do |t|
    t.integer "user_quiz_submission_id", null: false
    t.integer "answer_option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["answer_option_id"], name: "index_ao_aouqs"
    t.index ["user_quiz_submission_id"], name: "index_uqs_aouqs"
  end

  create_table "questions", force: :cascade do |t|
    t.text "question_text"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quiz_id", null: false
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_quiz_submissions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "answer_options_user_quiz_submissions", "answer_options"
  add_foreign_key "answer_options_user_quiz_submissions", "user_quiz_submissions"
  add_foreign_key "questions", "quizzes"
end
