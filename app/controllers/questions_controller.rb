class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find params[:id]
    @answer = @question.answers
    @new_answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    question_params = params[:question]
    @question = current_user.questions.new(
      title: params[:question][:title],
      description: params[:question][:description]
      )
    if @question.save
      redirect_to question_path(@question), notice: "Question submitted"
    else
      render :new
    end
  end
end
