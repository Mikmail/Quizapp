has_many :assessment_answer, dependent: :destroy, :inverse_of => :assessment
accepts_nested_attributes_for :assessment_answers