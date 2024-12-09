# テーブル設計

## users（ユーザー管理用） テーブル

| Column             | Type   | Options             |
| ------------------ | ------ | -----------         |
| nickname           | string | null: false             |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false             |


### Association

has_many :habits, dependent: :destroy


##  habits（習慣投稿用）テーブル

| Column                              | Type       | Options                     |
| ------------------                  | ------     | -----------                 |
| user                                | references | null: false ,foreign_key: true              |
| title                               | string     | null: false                 |
| description                         | text       | null: false               |

 

### Association

belongs_to :user 
has_many :habit_logs, dependent: :destroy

## habit_logs（習慣記録用）テーブル

| Column                              | Type       | Options                     |
| ------------------                  | ------     | -----------                 |
| habit                               | references | null: false, foreign_key: true               |
| date                                | date       | null: false                 |
| note                                | text       |                             |
| status                              | boolean    | null: false, trueが達成、falseが未達成      |

### Association
belongs_to :habit