class AddCorrectAnswerToAnswerOption < ActiveRecord::Migration[6.1]
  def change
    add_column :answer_options, :correct_answer, :boolean, default: false, null: false
  end
end
