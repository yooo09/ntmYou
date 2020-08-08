## アプリケーション名　：　ntmYou

### 概要
##### 

### 接続先情報
#### URL http://

#### テスト用アカウント等
##### ・投稿者１
##### 　メールアドレス:
##### 　パスワード:

### 開発環境
##### Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code

### 制作背景
##### 

## usersテーブル
|Column|Type|Options|
|:----:|:----:|:----:|
|name|string|null:false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|password confirmation|string|null: false|

has_many :poats
has_many :addposts

## postsテーブル
|Column|Type|Options|
|:----:|:----:|:----:|
|image|string|
|animal|string|
|food|string|
|aura_color|string|
|keyword1|text|null: false|
|keyword2|text|
|keyword3|text|
|user_id|integer|null: false, foreign_key: true|

has_many :addposts
belongs_to :user

## addpostsテーブル
|Column|Type|Options|
|:----:|:----:|:----:|
|keyword4|text|null: false|
|keyword5|text|
|keyword6|text|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

belongs_to :post
belongs_to :user


## categoriesテーブル
|Column|Type|Options|
|:----:|:----:|:----:|
|text|text|null: false|

has_many :category_posts
has_many :posts, through: category_posts
