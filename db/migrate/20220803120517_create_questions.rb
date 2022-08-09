class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions, :id => false do |t|
      t.integer :id
      t.text :question_text
      t.string :type

      t.timestamps
    end
  end
end
