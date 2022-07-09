class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(puestion_params)
    redirect_to action: :index
  end

  private
    def  question_params
      params.require(:question).permit(:name, :content, :title)
    end
end

