# Chat-space
* 様々な機能を搭載したチャットアプリケーション
 
# DEMO
[![Image from Gyazo](https://i.gyazo.com/3f6ef4185846ae531fb9d7f05fe9f209.gif)](https://gyazo.com/3f6ef4185846ae531fb9d7f05fe9f209)

[![Image from Gyazo](https://i.gyazo.com/dfd521e1fe045c3da5f8a559e5cde249.gif)](https://gyazo.com/dfd521e1fe045c3da5f8a559e5cde249)
 
# Features
* 新規登録機能
* グループ内でのチャット機能
* 複数人によるグループチャット機能
* チャット相手の検索機能
* チャットグループへのユーザー招待機能
* チャットの履歴表示機能
* 画像送信機能
* チャットの自動更新

# chat-spaceのDB設計 
## messagesテーブル 
|Column|Type|Options| 
|------|----|-------| 
|body|text| 
|image|string| 
|user_id|integer|null: false, foreign_key: true| 
|group_id|integer|null: false, foreign_key: true| 

### Association 
- belongs_to :group 
- belongs_to :user 

## usersテーブル 
|Column|Type|Options| 
|------|----|-------| 
|name|string|null: false, add_index: true| 
|email|string|null: false, unique: true| 

### Association 
- has_many :groups_users 
- has_many :groups, through: groups_users 
- has_many :messages 

## groupsテーブル 
|Column|Type|Options| 
|------|----|-------| 
|name|string|null: false, unique: true| 

### Association 
- has_many :groups_users 
- has_many :users, through: groups_users 
- has_many :messages 

## groups_usersテーブル 
|Column|Type|Options| 
|------|----|-------| 
|user_id|integer|null: false, foreign_key: true| 
|group_id|integer|null: false, foreign_key: true| 

### Association 
- belongs_to :group 
- belongs_to :user 
