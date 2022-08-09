class CreateAnswerOptionsUserQuizSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_options_user_quiz_submissions do |t|
      t.references :user_quiz_submission, null: false, foreign_key: true
      t.references :answer_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
