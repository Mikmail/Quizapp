class CreateAnswerOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_options do |t|
      t.text :answer_text
      t.integer :question_id

      t.timestamps
    end
  end
end
