require 'rails_helper'

RSpec.describe "Questions", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @question = FactoryBot.create(:question)
  end

  context '問題作成に失敗した時' do
    it '問題が空のためメッセージの送信に失敗すること' do
      
      visit new_question_path
      fill_in 'question_question', with: nil
      fill_in 'question_answer', with: nil
      click_on("作成")
      expect(current_path).to eq new_question_path
    end
  end
  # context '投稿に成功したとき' do
  #   it 'テキストの投稿に成功すると、投稿一覧に遷移して、投稿した内容が表示されている' do
  #     sign_in(@user)
  #     click_on(@room_user.room.name)

  #     # 値をテキストフォームに入力する

  #     # 送信した値がDBに保存されていることを確認する

  #     # 投稿一覧画面に遷移していることを確認する

  #     # 送信した値がブラウザに表示されていることを確認する

  #   end

  #   it '画像の投稿に成功すると、投稿一覧に遷移して、投稿した画像が表示されている' do
  #     # サインインする
  #     sign_in(@user)
  #   it 'テキストと画像の投稿に成功すること' do
  #     # サインインする
  #     sign_in(@room_user.user)

  #     # 作成されたチャットルームへ遷移する
  #     click_on(@room_user.room.name)

  #     # 添付する画像を定義する
  #     image_path = Rails.root.join('public/images/test_image.png')

  #     # 画像選択フォームに画像を添付する

  #     # 値をテキストフォームに入力する

  #     # 送信した値がDBに保存されていることを確認する

  #     # 送信した値がブラウザに表示されていることを確認する

  #     # 送信した画像がブラウザに表示されていることを確認する

  #   end
  # end
end
