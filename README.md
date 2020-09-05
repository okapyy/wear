# wear
## 使用技術

Ruby on Rails 5.2.4.2  
Haml / Scss  
devise  

## 概要


## 本番環境

https
テストアカウント  
メールアドレス :  
パスワード : 

## 制作背景


## DEMO

## 工夫したポイント


## 課題や今後実装したい機能

## DB設計
### usersテーブル
|Column|Type|Options|
|------|----|-------|
|wear_id|string|null: false|
|nickname|string|null: false|
|mail|string|null: false|
#### Association
- has_many :coodinates
- has_one :person
- has_many :external_sites

### personsテーブル
|Column|Type|Options|
|------|----|-------|
|height|string||
|gender|string||
|age|string||
|area|string||
|birthday|string||
|hair|string||
|introduction|text||
#### Association
- belongs_to :user

### external_sitesテーブル
|Column|Type|Options|
|------|----|-------|
|hp_blog|string||
|twitter|string||
|facebook|string||
|instagram|string||
|weibo|string||
#### Association
- belongs_to :user

### coodinatesテーブル
|Column|Type|Options|
|------|----|-------|
|detail|string||
|tag|string||
|gender|string|null: false|
|height|string|null: false|
|age|string||
|hair|string||
|public|string|null: false|
|user_id|references|foreign_key: true, null: false|
#### Association
- belongs_to :user
- has_many :coodinate_images
- has_many :coodinate_items

### coodinate_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|coodinate_id|references|foreign_key, null: false|
#### Association
- belongs_to :coodinate

### coodinate_itemsテーブル
|Column|Type|Options|
|------|----|-------|
|item_image|text||
|item_name|string||
|item_category|string||
|item_brand|string||
|item_color|string||
|item_area|string||
|item_price|integer||
|coodinate_id|references|foreign_key, null: false|
#### Association
- belongs_to :coodinate