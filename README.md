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


## users テーブル
| colum        | type   | options     |
| ------------ | ------ | ----------- |
| nickname     | string | null: false |
| email        | string | null: false |

### Association
- has_many :memories
- has_many :genres,  throught: user_genres
- has_many :user_genres


## genre テーブル
| colum    | type    | options      |
| -------- | ------- | ------------ |
| genre_id | integer | null: false  |

### Association
- has_many :users,  throught: user_genres
- has_many :user_genres
- has_many :memories


## user_genres テーブル
| colum    | type       | options                        |
| -------- | ---------- | ------------------------------ |
| user_id  | references | null: false, foregen_key: true |
| genre_id | references | null: false, foregen_key: true |

### Association
- belongs_to: user
- belongs_to: genre


## memoryies テーブル
| colum       | type       | options                          |
| ----------- | ---------- | -------------------------------- |
| question    | string     | null: false                      |
| answer      | string     | null: false                      |
| level       | integer    | null: false                      |
| next_answer | date       | null: false                      |
| user        | references | null: false, foregen_key: true   |

### Association
- belongs_to :user
- belongs_to :genre