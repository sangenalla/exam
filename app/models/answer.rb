class Answer < ActiveRecord::Base
  attr_accessible :description, :question_id, :valid_answer
end
