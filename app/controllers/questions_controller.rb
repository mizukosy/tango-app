class QuestionsController < ApplicationController
  before_action :move_to_index, except: [:index]


  def index
    @question = Question.all
  end

  def new
    @question = Question.new
  end
  
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @question.Question.find
  end

  private

  def question_params
    params.require(:question).permit(:question, :answer, :genre_id, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
