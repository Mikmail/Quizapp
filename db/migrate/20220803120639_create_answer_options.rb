class CreateAnswerOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_options, :id => false do |t|
      t.integer :id
      t.text :answer_text
      t.integer :question_id

      t.timestamps
    end
  end
end
