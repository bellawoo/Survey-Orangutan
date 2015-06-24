class AnswersController < ApplicationController
  def show
    @answers = Answer.find params[:question_id]
  end

  def new
    @answer = Answer.new
  end

  def create
    answer_params = params[:answer]
    @answer = Answer.new(
      answer: answer_params[:response]
      question_id: answer_params[:question_id]
      )
    if @answer.save
      linked_question = Question.find(answer[:question_id])
      redirect_to question_path(question), notice: "Answer submitted"
    else
      render question_path(@answer), notice: "Something went wrong. Try again."
    end
  end
end
