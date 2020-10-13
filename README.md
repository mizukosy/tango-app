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
| email        | string | null: false |

### Association
- has_many :questions


## questions テーブル
| colum       | type       | options                          |
| ----------- | ---------- | -------------------------------- |
| question    | text       | null: false                      |
| user_id     | references | null: false, foregen_key: true   |
| next_dar_id | references | null: false, foregen_key: true   |

### Association
- belongs_to :user
- has_one: answer
- has_one: next_day

## answers テーブル
| colum       | type       | options                          |
| ----------- | ---------- | -------------------------------- |
| answer      | text       | null: false                      |
| user        | references | null: false, foregen_key: true   |
| question    | references | null: false, foregen_key: ture   |
| next_day_id | references | null: false, foregen_key: true   |

### Association
- belongs_to :user
- belongs_to :question
- has_one: next_day

## next_day テーブル
| colum       | type       | options                          |
| ----------- | ---------- | -------------------------------- |
| level       | integer    | null: false                      |
| next_answer | date       | null: false                      |
| question_id | references | null: false, foregen_key: true   |
| answer_id   | references | null: false, foregen_key: true   |

### Association
- belongs_to :question
- belongs_to :answer