# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
- ruby 2.6.5
- Rails 6.0.0

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名
- tango-app

# アプリケーション概要
- 単語帳で正否に応じ次に出題される間隔を変更する仕様を目標にした実装途中のアプリである。

# App URL
<https://tango-29664.herokuapp.com/>

# テスト用アカウント
- email   :satou@gmail.com
- password:satou3

# 利用方法
- ユーザー登録/ログインを行う
- 作成ボタンより問題および解答を作成
- 開始より問題が表示された後、クリックを行い解答を表示
- 次の問題へ遷移する
- 次の問題がない場合、自身で左上の間隔学習をクリックし、トップページへ遷移する。

# 目指した課題解決
- 理解が不十分な問題に対しては繰り返し学習ができる仕様

# 洗い出した要件
- [x] テーブル設計 (/tango.drawio.png/参照)
- [x] 画面遷移図の作成 (/tango.puml/参照)
- [x] deviseの導入~新規登録、ログイン機能の実装
- [x] questionの作成
- [x] 前後の画面への遷移
- [x] クリックによる解答の表示
- [ ] ユーザーによる正否判定機能(countsテーブル)
- [ ] 判定による次に表示される日数の変更
- [ ] 次の問題がない場合、正否ボタンクリック後誤った問題へ遷移を繰り返す

# 実装した機能についてのGIFと説明
<https://gyazo.com/216833331bf6c71787c9235e9b4f34bc>
- countsテーブルの設計ができていないため、問題の遷移はquestionテーブルを経由して行っている段階

# データベース設計
- /tango.drawio.png/参照

# ローカルでの動作方法
```
$ git clone https://github.com/mizukosy/tango-app
$ cd tango-app
$ bundle install
$ rails db:create
$ rails db;migrate
$ rails s
```
- http://localhost:3000


## users テーブル
| colum        | type   | options     |
| ------------ | ------ | ----------- |
| nickname     | string | null: false |

### Association
- has_many :questions


## questions テーブル
| colum    | type       | options                        |
| -------- | ---------- | ------------------------------ |
| question | text       | null: false                    |
| answer   | text       | null: false                    |
| genre_id | integer    | null: false,                   |
| user     | references | null: false, foregen_key: true |

### Association
- belongs_to :user
- has_one: count


## counts テーブル
| colum       | type       | options                        |
| ----------- | ---------- | ------------------------------ |
| right_wrong | integer    | null: false                    |
| level       | integer    | null: false                    |
| answer_day  | date       | null: false                    |
| question    | references | null: false, foregen_key: true |

### Association
- belongs_to :question