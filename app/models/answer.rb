class Answer < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :response, :question_id
end
