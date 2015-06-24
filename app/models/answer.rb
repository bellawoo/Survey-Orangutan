class Answer < ActiveRecord::Base
  belongs_to :questions
  validates_presence_of :response, :question_id
end
