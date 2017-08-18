# Ruby on Rails チュートリアルのサンプルアプリケーション

これは、次の教材で作られたサンプルアプリケーションです。   
[*Ruby on Rails チュートリアル: 実例を使って Rails を学ぼう*](http://railstutorial.jp/)
[Michael Hartl](http://www.michaelhartl.com/) 著

## 完成品

[ソースコード](https://github.com/Yuki-Tani/Rails_lerning)  
[アプリURL](https://fierce-falls-44303.herokuapp.com/)  

サンプルにつき、認証メールは送られません。  
sign-upの後、ページ上部に表示されるURLにアクセスすると認証される仕組みにしています。  

また、管理者権限を持ったアカウントは以下の通りです。  

name:  "Example User"  
email: "example@railstutorial.org"  
password:              "foobar"  
password_confirmation: "foobar"  

## 拡張
[Ruby on Rails チュートリアル](http://railstutorial.jp/)で作成したsample_appに、次の機能を追加しました。

* ユーザーの検索機能（Ajaxで更新）  
* マイクロポストにお気に入り（スター）を付けられる機能(Ajaxで更新)  
* マイクロポストごとのお気に入り総数、ユーザーが付けたお気に入り総数(favorates)、ユーザーの総お気に入り獲得数(star)の表示(Ajaxで更新)  

## ユーザー検索機能

ログインした後、画面右上のメニューから「Users」を選択したページ(indexページ)に付いています。  

## お気に入り登録機能

各ユーザー毎のマイクロポストは、Users->アカウントをクリックで閲覧できます。  
また、自分のフォロワー/お気に入り登録済み のマイクロポストは、ログイン後 「Home」から閲覧できます。  

各マイクロポストの下部に付いた星ボタンを押すことでお気に入り登録/登録解除ができます。  
お気に入り登録したマイクロポストは、相手が例えフォロワーでなくても自分のHomeページに表示されるようになります。  

ボタンを押した直後はボタン上に「wait」と表示され、更新が終了するまでそのボタンは無効となるようにしました。  

## 各お気に入りに関する数値の確認

「マイクロポスト毎のお気に入り総数」は、各マイクロポストの星ボタンの上に表示されます。  
「ユーザーがつけたお気に入り総数」は、各ユーザーページのアイコンの下に、favoratesとして表示されます。  
「ユーザーの総お気に入り獲得数」も、各ユーザページのアイコンの下に、starsとして表示されます。  

全ての数値はAjaxによって非同期に随時更新、表示されるようにしました。

## ライセンス

[Ruby on Rails チュートリアル](http://railstutorial.jp/)内にあるすべてのソースコードは
MIT ライセンスと Beerware ライセンスのもとに公開されています。
詳細は [LICENSE.md](LICENSE.md) をご覧ください。

## ローカルでの使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる RubyGems をインストールします。

```
$ bundle install --without production
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ rails test
```

テストが無事に通ったら、Railsサーバーを立ち上げる準備が整っているはずです。

```
$ rails server
```

詳しくは、[*Ruby on Rails チュートリアル*](http://railstutorial.jp/)を参考にしてください。

https://fierce-falls-44303.herokuapp.com/
https://git.heroku.com/fierce-falls-44303.git  
