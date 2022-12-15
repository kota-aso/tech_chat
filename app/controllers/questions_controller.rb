class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(quesion_params)
    redirect_to action: :index
  end

  private
  
  def quesion_params
    params.require(:question).permit(:title, :content, :name)
  end
end
