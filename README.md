# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名：単語帳


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