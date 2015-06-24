class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find params[:id]
    @answers = @question.answers.find params[:id]
    @new_answer = @question.answers.new
  end

  def new
    @question = Question.new
  end

  def create
    question_params = params[:question]
    @question = Question.new(
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
