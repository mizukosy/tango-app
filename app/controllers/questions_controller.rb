class QuestionsController < ApplicationController
  before_action :move_to_index, except: [:index]
  before_action :select_question, only: [:edit, :update, :destroy]

  def index
    @questions = Question.all
    # @questions = Question.where(user_id: current_user.id)
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
    @question = Question.find(params[:id])
  end

  def edit
  end

  def update
    @question.update(question_params)
    if @question.save
      redirect_to question_path
    else
      render :edit
    end
  end

  def destroy
    @question.delete
    redirect_to root_path
  end

  private

  def question_params
    params.require(:question).permit(:question, :answer, :genre_id, :image).merge(user_id: current_user.id)
  end

  def select_question
    @question = Question.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
