class CreateQuestionAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :question_answers, :id => false do |t|
      t.integer :id
      t.integer :question_id
      t.text :answer_option_ids
      t.integer :user_id

      t.timestamps
    end
  end
end
