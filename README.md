# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

### Ruby version
2.3.1

* System dependencies

* Configuration

* Database creation

##Database design
## Database design

### user table < devise

|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|e-mail|string|null: false|
|password|string|null: false|

#### Association
- has_many :groups, through: :members
- has_many :messages

### message table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|group_id|integer|null: false|
|body|text|null: false|
|image|string|null: false|

#### Association
- belongs_to :user
- belongs_to :group

### chat-grp => group table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

#### Association
- has_many :users, through: :members
- has_many :messages

### members table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

#### Association
- belongs_to :group
- belongs_to :user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
