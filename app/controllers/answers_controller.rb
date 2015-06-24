class AnswersController < ApplicationController
  def show
    @answer = Answer.find params[:question_id]
  end

  def new
    @new_answer = Answer.new
  end

  def create
    answer_params = params[:answer]
    @new_answer = Answer.new(
      answer: answer_params[:response],
      question_id: answer_params[:question_id]
      )
    if @new_answer.save
      linked_question = Question.find(answer[:question_id])
      redirect_to question_path(answer), notice: "Answer submitted"
    else
      redirect_to new_question_answer_path(answer), notice: "Something went wrong. Try again."
    end
  end

  # def update
  #   @answer = Answer.find params[:question_id]
  #   if @answer.update_attributes(params[:question_id])
  #     redirect_to question_path, notice: "Answer submitted"
  #   else
  #     redirect_to question_path, notice: "Something's not right" 
  #   end
  # end
end
