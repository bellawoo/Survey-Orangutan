class AnswersController < ApplicationController
  def show
    @answer = Answer.find params[:question_id]
  end

  def new
    @new_answer = Answer.new
  end

  def create
    # answer_params = @answer params[:answer]
    @new_answer = current_user.answers.new(
      response: params[:answer][:response],
      question_id: params[:answer][:question_id]
      )
    if @new_answer.save
      linked_question = Question.find(params[:answer][:question_id])
      redirect_to question_path(linked_question), notice: "Answer submitted"
    else
      redirect_to question_path(linked_question), notice: "Something went wrong. Try again."
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
