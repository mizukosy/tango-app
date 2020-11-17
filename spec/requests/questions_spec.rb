require 'rails_helper'
describe QuestionsController, type: :request do
  before do
    @user = FactoryBot.create(:user)
    @question = FactoryBot.create(:question)
  end

  describe "GET /questions" do
    it "index actionにリクエストすると正常にレスポンスが返ってくる" do
      get root_path
      expect(response.status).to eq 200
    end
    it "show actionにリクエストすると正常にレスポンスが返ってくる" do
      sign_in @user
      get :show, params: {id: @question.id}
      expect(response).to be_success
    end
  end
end
