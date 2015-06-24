class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  validates_presence_of :response, :question_id, :user_id
end
