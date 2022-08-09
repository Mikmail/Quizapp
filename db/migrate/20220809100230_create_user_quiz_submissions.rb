class CreateUserQuizSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_quiz_submissions do |t|
      t.string :name

      t.timestamps
    end
  end
end
