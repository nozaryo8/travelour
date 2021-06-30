## TravelOur
**Travelourは質問を投稿して回答や共有ができる、海外旅行者、海外在住者向けサービスです。**  
初めての海外で何を準備していいかわからない...  
現地に着いたら日本と生活様式が違いすぎて色々覚えなきゃいけない...  
などの海外生活、海外旅行に関する悩みや疑問をユーザー同士で質問、回答し合って解決できる  
「海外に関する疑問に特化したQ&Aサイト」です

## URL
https://www.travelour.net/

http://3.114.182.148/ ←現在はこちらからご覧になることができます

<img width="1277" alt="スクリーンショット 2021-04-18 20 33 31" src="https://user-images.githubusercontent.com/73025214/115144062-7f31d980-a085-11eb-9636-ec7aefdb5b2c.png">

## 作成の背景
私は一度の渡航経験がきっかけに海外旅行が好きになりました。  
大学生時代から4回の海外渡航をしてきましたが海外と日本は違う所ばかりで行く度に新しく覚えなければならないことが沢山ありました。  
例えば交通機関の使い方や治安の悪い区域などです。  
また「この町で一番安いスーパーってどこだろう」とか、「近くに良いバーってないかな」って考えることがあり、  
現地の人にしか知らないようなニッチな情報も欲しいなと感じることもありました。  
そんな時に身近にいつでも質問できる詳しい人が居たらなぁ…とよく思っていました。  
その経験を元に私のように海外に関する疑問を気軽に質問できて解決できるサービスを作ろうと思い形にしました。

## ターゲット
- 性別: 男女どちらも
- 年齢: 誰でもOK
- 滞在歴: 0〜2年目(現地の情報をまだ把握しきれていない方)
- 滞在国: どこでも(一部例外あり)

## 利用方法
TravelOurのメイン機能は以下の2つです。 
### 1.質問内容を投稿して共有する
![Videotogif (2)](https://user-images.githubusercontent.com/73025214/115436424-f2824980-a245-11eb-9f27-85de525ea615.gif)
「質問する！」から疑問に思った内容を記入して投稿します。  
回答者が回答しやすいように記入項目として「国の場所」、「タイトル」、「質問の種類」、「内容」を記入し投稿します。

### 2.質問に回答する
![Videotogif](https://user-images.githubusercontent.com/73025214/115438405-51e15900-a248-11eb-9e7b-d2b105089d12.gif)
回答者は質問一覧から質問を選び回答することができます。  
回答に対して「参考になった」ボタンをつけているので、他のユーザーがこの情報が有益だと感じたかどうかを視覚的にわかりやすくしています。

## 機能一覧
* ログイン　ユーザー登録(devise)
* らくらくログイン(ユーザ登録不要でログイン)
* 画像投稿(carrierwave,Rmagick)
* 管理者機能
* 質問投稿
* 質問に対する回答 ajax(jQuery)
* 質問に対する役に立ったボタン ajax(React)
* 回答に対するコメント ajax(jQuery)返信者のみ：削除可能
* 回答に対する参考になったボタン ajax(jQuery)
* 投稿並び替え機能
* キーワード検索
* ページネーション


## 使用技術
* Ruby 2.6.6
* Ruby on Rails 6.0.3.6
* Postgre SQL
* JQuery
* React(役に立ったボタン、参考になったボタンのみ)
* ajax
* Bootstrap
* AWS (S3,EC2,Route53,VPC,ACM)
* rspec(テスト)
* Rubocop(静的コード解析)

## ER図
<img width="533" alt="travelour" src="https://user-images.githubusercontent.com/73025214/115192832-4bf35700-a126-11eb-9ee4-cb5252c75457.png">

## インフラ構成図
<img width="652" alt="スクリーンショット 2021-04-29 1 54 20" src="https://user-images.githubusercontent.com/73025214/116442818-e9b8f580-a88d-11eb-8328-67cac42236f3.png">

## 画面遷移図
<img width="628" alt="スクリーンショット 2021-04-20 6 14 35" src="https://user-images.githubusercontent.com/73025214/115304311-c57b5b80-a19f-11eb-8c28-f91314c920b9.png">
