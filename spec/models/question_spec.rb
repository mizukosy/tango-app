require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    @question = FactoryBot.build(:question)
  end

  describe 'question作成' do
    context 'question作成が上手くいく時' do
      it 'qustion answer genre_id imageがあれば作成する事ができる' do
        expect(@question).to be_valid
      end
      it 'image空の場合でも保存できる' do
        @question.image = nil
        expect(@question).to be_valid
      end
    end

    context 'question作成が上手くいかない時' do
      it 'questionが空では作成できない' do
        @question.question = nil
        @question.valid?
        expect(@question.errors.full_messages).to include("Questionを入力してください")
      end
      it 'qnswerが空では作成できない' do
        @question.answer = nil
        @question.valid?
        expect(@question.errors.full_messages).to include("Answerを入力してください")
      end
      it "genre_idが1では作成できない" do
        @question.genre_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("Genreは1以外の値にしてください")
      end
    end
  end
end

