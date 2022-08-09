class AnswerOption < ApplicationRecord
  belongs_to :question
  has_and_belongs_to_many :user_quiz_submissions
end
