class CountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @question = Question.where(user_id: current_user.id).first
  end
end
