class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :question_text
      t.string :type

      t.timestamps
    end
  end
end
