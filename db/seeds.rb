# ユーザーのデータ
User.create(
    [
        {username: '鈴木太郎', email: 'sitsumon1@gmail.com', password: '11111111', password_confirmation: '11111111',profile: "こんにちは"},
        {username: '佐々木太郎', email: 'sitsumon2@gmail.com', password: '11111111', password_confirmation: '11111111'},
        {username: '田中太郎', email: 'sitsumon3@gmail.com', password: '11111111', password_confirmation: '11111111'},
        {username: '高橋花子', email: 'kaitou1@gmail.com', password: '11111111', password_confirmation: '11111111'},
        {username: '斎藤花子', email: 'kaitou2@gmail.com', password: '11111111', password_confirmation: '11111111'},
        {username: '池田花子', email: 'kaitou3@gmail.com', password: '11111111', password_confirmation: '11111111'}])
 
Question.create(
    [
        {title: '東京のお土産で喜ばれるもの', body: '今週末東京に行きますが、東京土産で喜ばれるものありますか？', user_id: 1},
        {title: '好きな動物', body: '一番好きな動物は何ですか？', user_id: 1},
        {title: '美味しいご飯や', body: '名古屋周辺の美味しいご飯屋さん教えてください', user_id: 2},
        {title: '明日の天気', body: '明日の天気は？', user_id: 2},
        {title: '読書時間について', body: '一日の読書時間はどれぐらい？', user_id: 3},
        {title: '英語の勉強法', body: '英語はどうやって勉強したらいいですか？', user_id: 3}])
 
Answer.create(
    [
        {body: '東京ばな奈じゃないですか？', question_id: 1, user_id: 4},
        {body: 'ラスクみたいなやつ', question_id: 1, user_id: 5},
        {body: '中華まん', question_id: 1, user_id: 6},
        {body: '猫', question_id: 2, user_id: 4},
        {body: '犬', question_id: 2, user_id: 5},
        {body: 'とり', question_id: 2, user_id: 6},
        {body: '矢場とん', question_id: 3, user_id: 4},
        {body: '山ちゃん', question_id: 3, user_id: 5},
        {body: 'みせん', question_id: 3, user_id: 6},
        {body: '晴れ', question_id: 4, user_id: 4},
        {body: '曇り', question_id: 4, user_id: 5},
        {body: '雨', question_id: 4, user_id: 6},
        {body: '1時間', question_id: 5, user_id: 4},
        {body: '2時間', question_id: 5, user_id: 5},
        {body: '3時間', question_id: 5, user_id: 6},
        {body: '特かく話す', question_id: 6, user_id: 4},
        {body: '単語の勉強', question_id: 6, user_id: 5},
        {body: 'レッスンに行く', question_id: 6, user_id: 6}])
 
Reaction.create(
    [
        {body: '東京ばな奈いいですね', user_id: 1, answer_id: 1},
        {body: '猫いいですね！', user_id: 1, answer_id: 4},
        {body: '矢場とんいいですね！', user_id: 3, answer_id: 7}])

Tag.create(
    [
        {name: '観光'},
        {name: 'ホテル'},
        {name: 'ショッピング'},
        {name: 'グルメ'},
        {name: '交通'},
        {name: '治安'},
        {name: 'トラブル'},
        {name: '通貨・クレジットカード'},
        {name: '天候・気候'},
        {name: '郵便・電話'},
        {name: 'Wi-Fiレンタル・Wi-Fiスポット・SIMカード'}
      ])

# activeadmin(管理画面)に入るためのユーザーです。ターミナルで「rails g active_admin:install」を実行後作成されます。
AdminUser.create!(email: 'admin@gmail.com', password: '11111111', password_confirmation: '11111111') if Rails.env.development?