class UserQuizSubmission < ApplicationRecord
  has_and_belongs_to_many :answer_options
end
