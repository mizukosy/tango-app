require 'rails_helper'

RSpec.describe "Users", type: :system do
  it 'ログインしていない状態で作成ボタンを押すとトップページへ戻る。' do
    # トップページに遷移
    visit root_path
    # ログインしていない場合、作成ボタンを押してもトップページに移動している。
    expect(current_path).to eq root_path
  end
  it 'ログインに成功し、トップページに遷移する' do
    @user = FactoryBot.create(:user)
    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_on("Log in")
    expect(current_path).to eq root_path
  end

  it 'ログインに失敗し、再びサインインページに戻ってくる' do
    @user = FactoryBot.create(:user)
    visit new_user_session_path
    # 誤ったユーザー情報を入力する
    fill_in 'user_email', with: "notgood"
    fill_in 'user_password', with: "notgood"
    click_on("Log in")
    expect(current_path).to eq new_user_session_path
  end

end
