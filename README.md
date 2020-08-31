# README
<img src="https://img.shields.io/badge/ruby-2.6.5-green.svg?longCache=true"> <img src="https://img.shields.io/badge/-heroku-yellow.svg?longCache=true"> <img src="https://img.shields.io/badge/PostgreSQL-12.3-orange.svg?longCache=true"> <img src="https://img.shields.io/badge/-jquery-blue.svg?longCache=true">

## Zeromemo
タイマー付きのメモアプリです。タイマーをつけて、クリエイティブな思考力をあげるためのトレーニングアプリです。

## The reason of creating this application
マッキンゼーで14年間活躍された赤羽雄二という方が執筆された、0秒思考という本に影響されたアプリケーションである。
通常のメモ書きだと、秒数を考えずに時間を無駄にしながら書いてしまいます。
その習慣を無くす及、個人の生産性を上げるために活躍する一つのアプリケーションになります。
アプリ自体はシンプルですが、このアプリの本質は、「個人の生産性向上＝組織の生産性向上」をテーマにしたアプリになります。
タイマーについては、自己設定できますが、１分間を推奨しております。
また、確認画面も用意しておりますので、書ききれないことがあれば、一旦戻りその場で編集可能になっております。
タイマーなしでも、通常のメモアプリケーションとしても使用することが可能です。

## Link to our app
[ゼロメモ][https://zero-memo.herokuapp.com]

## DEMO
- メモ一覧画面
- ユーザー管理画面
- メモ新規作成画面
- タイマー機能画面
- 一時保存画面


## Test User
* テストアカウント
  * メールアドレス test@test
  * パスワード test

## Caution
- テストアカウントは、メモ書きのみ体験可能です。ユーザー管理（登録/編集/削除）に関しては、セキュリティー上不可になっております。

## Demo
- ログイン画面
- メモ一覧画面
- メモ作成画面
- メモ確認画面
- アカウント管理画面


## Features
- ユーザーログイン・ログアウト機能
- メモ機能
- タイマー機能
- メモ検索機能
- ページネーション機能
- ユーザー管理機能(admin-user/normal-user)(削除/編集)
- メモ編集機能
- メモ削除機能

## Instollation
- $ git clone https://github.com/goemon11/Zeromemo.git
- $ cd Zeromemo.git
- $ bundle install

## Use Gem List In This App
- bootstrap
- slim-rails
- ransack
- mini_magick
- carrierwave
- kaminari
- uglifier
- jquery-rails

## Author
Ishikawa Ryo


## Database scheme

### memos テーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null:false|
|description|text|
|image|string|
|user_id|references|foreign_key: true|

### Association
- belongs_to :user


### users テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|email|string|null:false, unique: true|
|password_digest|string|null: false|
|admin|string|null:false|

### Association
- has_many :memos

## Future features
下記の項目を追加実装の予定です。
- [ ] タグ機能
- [ ] お気に入り機能
- [ ] カレンダー機能
- [ ] リマインダー機能

## Contributions
プルリクエストお待ちしております。
また、上記以外で追加機能場合は、下記の宛先にDMにてお待ちしております。
本番環境でのアカウントも同時に作らさせていただきます（＊ユーザーの管理はできないアカウントをお作りします。）
 [Ishikawa Ryo Twitterアカウント][https://twitter.com/HJsliGSXnmRp6tU]

