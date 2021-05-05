# ユーザーのデータ

User.create(
    [
        {username: 'ヤッピー', email: 'sitsumon1@gmail.com', password: '11111111', password_confirmation: '11111111',profile: "こんにちは",image: open("#{Rails.root}/public/images/user1.jpeg")},
        {username: 'モロヤン', email: 'sitsumon2@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user2.jpg")},
        {username: 'k蓮', email: 'sitsumon3@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user3.jpg")},
        {username: 'kouri', email: 'sitsumon4@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user4.jpg")},
        {username: 'ザキヤマ', email: 'sitsumon5@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user5.jpg")},
        {username: 'ふぅ', email: 'sitsumon6@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user6.jpg")},
        {username: '山ちゃん。', email: 'sitsumon7@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user7.jpg")},
        {username: 'やんまー', email: 'sitsumon8@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user8.jpg")},
        {username: 'もとき', email: 'sitsumon9@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user9.jpg")},
        {username: '字音', email: 'sitsumon10@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user10.jpg")},
        {username: '江南スタイル', email: 'sitsumon11@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user11.jpg")},
        {username: 'やばめ', email: 'sitsumon12@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user12.jpeg")},
        {username: 'オードリー', email: 'sitsumon13@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user13.jpg")},
        {username: 'karin', email: 'sitsumon14@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user14.jpg")},
        {username: 'march', email: 'sitsumon15@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user15.jpg")},
        {username: '水鶏', email: 'sitsumon16@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user16.jpg")},
        {username: 'ルイルイ', email: 'sitsumon17@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user17.jpg")},
        {username: 'keith_forest', email: 'sitsumon18@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user18.jpg")},
        {username: 'レイマン', email: 'sitsumon19@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user19.jpg")},
        {username: 'はぴたん', email: 'sitsumon20@gmail.com', password: '11111111', password_confirmation: '11111111',image: open("#{Rails.root}/public/images/user20.jpg")}
    ])
 
Continent.create(
    [
        {name: 'アジア'},
        {name: 'ヨーロッパ'},
        {name: '北米'},
        {name: '中南米'},
        {name: 'オセアニア・ミクロネシア'},
        {name: '中近東'},
        {name: 'アフリカ'},
    ]
)

Country.create(
    [
        {name: '韓国',continent_id: 1, image: "/photos/1.jpg"},
        {name: 'タイ',continent_id: 1, image: "/photos/2.jpg"},
        {name: '台湾',continent_id: 1, image: "/photos/3.jpg"},
        {name: '中国',continent_id: 1, image: "/photos/4.jpg"},
        {name: '香港',continent_id: 1, image: "/photos/5.jpg"},
        {name: 'アフガニスタン',continent_id: 1, image: "/photos/6.jpg"},
        {name: 'インド',continent_id: 1, image: "/photos/7.jpg"},
        {name: 'インドネシア',continent_id: 1, image: "/photos/8.jpg"},
        {name: 'カンボジア',continent_id: 1, image: "/photos/9.jpg"},
        {name: 'シンガポール',continent_id: 1, image: "/photos/10.jpg"},
        {name: 'スリランカ',continent_id: 1, image: "/photos/11.jpg"},
        {name: 'ネパール',continent_id: 1, image: "/photos/12.jpg"},
        {name: 'パキスタン',continent_id: 1, image: "/photos/13.jpg"},
        {name: 'バングラデシュ',continent_id: 1, image: "/photos/14.jpg"},
        {name: '東ティモール',continent_id: 1, image: "/photos/15.jpg"},
        {name: 'フィリピン',continent_id: 1, image: "/photos/16.jpg"},
        {name: 'ブータン',continent_id: 1, image: "/photos/17.jpg"},
        {name: 'ブルネイ',continent_id: 1, image: "/photos/18.jpg"},
        {name: 'ベトナム',continent_id: 1, image: "/photos/19.jpg"},
        {name: 'マカオ',continent_id: 1, image: "/photos/20.jpg"},
        {name: 'マレーシア',continent_id: 1, image: "/photos/21.jpg"},
        {name: 'ミャンマー',continent_id: 1, image: "/photos/22.jpg"},
        {name: 'モルディブ',continent_id: 1, image: "/photos/23.jpg"},
        {name: 'モンゴル',continent_id: 1, image: "/photos/24.jpg"},
        {name: 'ラオス',continent_id: 1, image: "/photos/25.jpg"},
        {name: 'イギリス',continent_id: 2, image: "/photos/26.jpg"},
        {name: 'イタリア',continent_id: 2, image: "/photos/27.jpg"},
        {name: 'スイス',continent_id: 2, image: "/photos/28.jpg"},
        {name: 'スペイン',continent_id: 2, image: "/photos/29.jpg"},
        {name: 'ドイツ',continent_id: 2, image: "/photos/30.jpg"},
        {name: 'フランス',continent_id: 2, image: "/photos/31.jpg"},
        {name: 'フェロー諸島',continent_id: 2, image: "/photos/32.jpg"},
        {name: 'ジブラルタル',continent_id: 2, image: "/photos/33.jpg"},
        {name: 'グリーンランド',continent_id: 2, image: "/photos/34.jpg"},
        {name: 'コソボ',continent_id: 2, image: "/photos/35.jpg"},
        {name: 'スヴァールバル諸島',continent_id: 2, image: "/photos/36.jpg"},
        {name: 'アイスランド',continent_id: 2, image: "/photos/37.jpg"},
        {name: 'アイルランド',continent_id: 2, image: "/photos/38.jpg"},
        {name: 'アゼルバイジャン',continent_id: 2, image: "/photos/39.jpg"},
        {name: 'アルバニア',continent_id: 2, image: "/photos/40.jpg"},
        {name: 'アルメニア',continent_id: 2, image: "/photos/41.jpg"},
        {name: 'アンドラ',continent_id: 2, image: "/photos/42.jpg"},
        {name: 'ウクライナ',continent_id: 2, image: "/photos/43.jpg"},
        {name: 'ウズベキスタン',continent_id: 2, image: "/photos/44.jpg"},
        {name: 'エストニア',continent_id: 2, image: "/photos/45.jpg"},
        {name: 'オーストリア',continent_id: 2, image: "/photos/46.jpg"},
        {name: 'オランダ',continent_id: 2, image: "/photos/47.jpg"},
        {name: 'カザフスタン',continent_id: 2, image: "/photos/48.jpg"},
        {name: 'キプロス',continent_id: 2, image: "/photos/49.jpg"},
        {name: 'ギリシャ',continent_id: 2, image: "/photos/50.jpg"},
        {name: 'キルギス',continent_id: 2, image: "/photos/51.jpg"},
        {name: 'ジョージア',continent_id: 2, image: "/photos/52.jpg"},
        {name: 'クロアチア',continent_id: 2, image: "/photos/53.jpg"},
        {name: 'サンマリノ',continent_id: 2, image: "/photos/54.jpg"},
        {name: 'スウェーデン',continent_id: 2, image: "/photos/55.jpg"},
        {name: 'スロバキア',continent_id: 2, image: "/photos/56.jpg"},
        {name: 'スロベニア',continent_id: 2, image: "/photos/57.jpg"},
        {name: 'セルビア',continent_id: 2, image: "/photos/58.jpg"},
        {name: 'タジキスタン',continent_id: 2, image: "/photos/59.jpg"},
        {name: 'チェコ',continent_id: 2, image: "/photos/60.jpg"},
        {name: 'デンマーク',continent_id: 2, image: "/photos/61.jpg"},
        {name: 'トルコ',continent_id: 2, image: "/photos/62.jpg"},
        {name: 'ノルウェー',continent_id: 2, image: "/photos/63.jpg"},
        {name: 'ハンガリー',continent_id: 2, image: "/photos/64.jpg"},
        {name: 'フィンランド',continent_id: 2, image: "/photos/65.jpg"},
        {name: 'ブルガリア',continent_id: 2, image: "/photos/66.jpg"},
        {name: 'ベラルーシ',continent_id: 2, image: "/photos/67.jpg"},
        {name: 'ベルギー',continent_id: 2, image: "/photos/68.jpg"},
        {name: 'ポーランド',continent_id: 2, image: "/photos/69.jpg"},
        {name: 'ボスニア・ヘルツェゴビナ',continent_id: 2, image: "/photos/70.jpg"},
        {name: 'ポルトガル',continent_id: 2, image: "/photos/71.jpg"},
        {name: '北マケドニア共和国',continent_id: 2, image: "/photos/72.jpg"},
        {name: 'マルタ',continent_id: 2, image: "/photos/73.jpg"},
        {name: 'モナコ',continent_id: 2, image: "/photos/74.jpg"},
        {name: 'モルドバ',continent_id: 2, image: "/photos/75.jpg"},
        {name: 'モンテネグロ',continent_id: 2, image: "/photos/76.jpg"},
        {name: 'ラトビア',continent_id: 2, image: "/photos/77.jpg"},
        {name: 'リトアニア',continent_id: 2, image: "/photos/78.jpg"},
        {name: 'リヒテンシュタイン',continent_id: 2, image: "/photos/79.jpg"},
        {name: 'ルーマニア',continent_id: 2, image: "/photos/80.jpg"},
        {name: 'ルクセンブルク',continent_id: 2, image: "/photos/81.jpg"},
        {name: 'ロシア',continent_id: 2, image: "/photos/82.jpg"},
        {name: 'アメリカ',continent_id: 3, image: "/photos/83.jpg"},
        {name: 'カナダ',continent_id: 3, image: "/photos/84.jpg"},
        {name: 'ハワイ',continent_id: 3, image: "/photos/85.jpg"},
        {name: 'ブラジル',continent_id: 4, image: "/photos/86.jpg"},
        {name: 'ペルー',continent_id: 4, image: "/photos/87.jpg"},
        {name: 'メキシコ',continent_id: 4, image: "/photos/88.jpg"},
        {name: 'アンギラ',continent_id: 4, image: "/photos/89.jpg"},
        {name: 'サン・バルテルミ',continent_id: 4, image: "/photos/90.jpg"},
        {name: 'BES諸島',continent_id: 4, image: "/photos/91.jpg"},
        {name: 'キュラソー',continent_id: 4, image: "/photos/92.jpg"},
        {name: 'グアドループ',continent_id: 4, image: "/photos/93.jpg"},
        {name: 'アルゼンチン',continent_id: 4, image: "/photos/94.jpg"},
        {name: 'アルバ',continent_id: 4, image: "/photos/95.jpg"},
        {name: 'アンティグア・バーブーダ',continent_id: 4, image: "/photos/96.jpg"},
        {name: 'ウルグアイ',continent_id: 4, image: "/photos/97.jpg"},
        {name: '英領ヴァージン諸島',continent_id: 4, image: "/photos/98.jpg"},
        {name: 'エクアドル',continent_id: 4, image: "/photos/99.jpg"},
        {name: 'エルサルバドル',continent_id: 4, image: "/photos/100.jpg"},
        {name: 'ガイアナ',continent_id: 4, image: "/photos/101.jpg"},
        {name: 'キューバ',continent_id: 4, image: "/photos/102.jpg"},
        {name: 'グアテマラ',continent_id: 4, image: "/photos/103.jpg"},
        {name: 'グレナダ',continent_id: 4, image: "/photos/104.jpg"},
        {name: 'ケイマン諸島',continent_id: 4, image: "/photos/105.jpg"},
        {name: 'コスタリカ',continent_id: 4, image: "/photos/106.jpg"},
        {name: 'コロンビア',continent_id: 4, image: "/photos/107.jpg"},
        {name: 'ジャマイカ',continent_id: 4, image: "/photos/108.jpg"},
        {name: 'スリナム',continent_id: 4, image: "/photos/109.jpg"},
        {name: 'セント・マーチン島',continent_id: 4, image: "/photos/110.jpg"},
        {name: 'セントクリストファー・ネイビス',continent_id: 4, image: "/photos/111.jpg"},
        {name: 'セントビンセント・グレナディーン',continent_id: 4, image: "/photos/112.jpg"},
        {name: 'セントルシア',continent_id: 4, image: "/photos/113.jpg"},
        {name: 'チリ',continent_id: 4, image: "/photos/114.jpg"},
        {name: 'ドミニカ共和国',continent_id: 4, image: "/photos/115.jpg"},
        {name: 'ドミニカ国',continent_id: 4, image: "/photos/116.jpg"},
        {name: 'トリニダード・トバゴ',continent_id: 4, image: "/photos/117.jpg"},
        {name: 'ニカラグア',continent_id: 4, image: "/photos/118.jpg"},
        {name: 'ハイチ',continent_id: 4, image: "/photos/119.jpg"},
        {name: 'パナマ',continent_id: 4, image: "/photos/120.jpg"},
        {name: 'バハマ',continent_id: 4, image: "/photos/121.jpg"},
        {name: 'バミューダ諸島',continent_id: 4, image: "/photos/122.jpg"},
        {name: 'パラグアイ',continent_id: 4, image: "/photos/123.jpg"},
        {name: 'バルバドス',continent_id: 4, image: "/photos/124.jpg"},
        {name: 'プエルトリコ',continent_id: 4, image: "/photos/125.jpg"},
        {name: '仏領ギアナ',continent_id: 4, image: "/photos/126.jpg"},
        {name: '米領ヴァージン諸島',continent_id: 4, image: "/photos/127.jpg"},
        {name: 'ベネズエラ',continent_id: 4, image: "/photos/128.jpg"},
        {name: 'ベリーズ',continent_id: 4, image: "/photos/129.jpg"},
        {name: 'ボネール',continent_id: 4, image: "/photos/130.jpg"},
        {name: 'ボリビア',continent_id: 4, image: "/photos/131.jpg"},
        {name: 'ホンジュラス',continent_id: 4, image: "/photos/132.jpg"},
        {name: 'マルチニーク',continent_id: 4, image: "/photos/133.jpg"},
        {name: 'タークス・カイコス諸島',continent_id: 4, image: "/photos/134.jpg"},
        {name: 'オーストラリア',continent_id: 5, image: "/photos/135.jpg"},
        {name: '北マリアナ諸島',continent_id: 5, image: "/photos/136.jpg"},
        {name: 'ニュージーランド',continent_id: 5, image: "/photos/137.jpg"},
        {name: 'ノーフォーク島',continent_id: 5, image: "/photos/138.jpg"},
        {name: 'キリバス',continent_id: 5, image: "/photos/139.jpg"},
        {name: 'グアム',continent_id: 5, image: "/photos/140.jpg"},
        {name: 'クック諸島',continent_id: 5, image: "/photos/141.jpg"},
        {name: 'サモア',continent_id: 5, image: "/photos/142.jpg"},
        {name: 'ソロモン諸島',continent_id: 5, image: "/photos/143.jpg"},
        {name: 'タヒチ',continent_id: 5, image: "/photos/144.jpg"},
        {name: 'トンガ',continent_id: 5, image: "/photos/145.jpg"},
        {name: 'ニウエ',continent_id: 5, image: "/photos/146.jpg"},
        {name: 'ニューカレドニア',continent_id: 5, image: "/photos/147.jpg"},
        {name: 'バヌアツ',continent_id: 5, image: "/photos/148.jpg"},
        {name: 'パプアニューギニア',continent_id: 5, image: "/photos/149.jpg"},
        {name: 'パラオ',continent_id: 5, image: "/photos/150.jpg"},
        {name: 'フィジー',continent_id: 5, image: "/photos/151.jpg"},
        {name: '米領サモア',continent_id: 5, image: "/photos/152.jpg"},
        {name: 'マーシャル諸島',continent_id: 5, image: "/photos/153.jpg"},
        {name: 'ミクロネシア',continent_id: 5, image: "/photos/154.jpg"},
        {name: 'アラブ首長国連邦',continent_id: 6, image: "/photos/155.jpg"},
        {name: 'イスラエル',continent_id: 6, image: "/photos/156.jpg"},
        {name: 'イラク',continent_id: 6, image: "/photos/157.jpg"},
        {name: 'イラン',continent_id: 6, image: "/photos/158.jpg"},
        {name: 'オマーン',continent_id: 6, image: "/photos/159.jpg"},
        {name: 'カタール',continent_id: 6, image: "/photos/160.jpg"},
        {name: 'クウェート',continent_id: 6, image: "/photos/161.jpg"},
        {name: 'サウジアラビア',continent_id: 6, image: "/photos/162.jpg"},
        {name: 'シリア',continent_id: 6, image: "/photos/163.jpg"},
        {name: 'バーレーン',continent_id: 6, image: "/photos/164.jpg"},
        {name: 'ヨルダン',continent_id: 6, image: "/photos/165.jpg"},
        {name: 'レバノン',continent_id: 6, image: "/photos/166.jpg"},
        {name: 'エジプト',continent_id: 7, image: "/photos/167.jpg"},
        {name: 'ケニア',continent_id: 7, image: "/photos/168.jpg"},
        {name: 'ジンバブエ',continent_id: 7, image: "/photos/169.jpg"},
        {name: 'チュニジア',continent_id: 7, image: "/photos/170.jpg"},
        {name: '南アフリカ共和国',continent_id: 7, image: "/photos/171.jpg"},
        {name: 'モロッコ',continent_id: 7, image: "/photos/172.jpg"},
        {name: 'アルジェリア',continent_id: 7, image: "/photos/173.jpg"},
        {name: 'アンゴラ',continent_id: 7, image: "/photos/174.jpg"},
        {name: 'ウガンダ',continent_id: 7, image: "/photos/175.jpg"},
        {name: 'エチオピア',continent_id: 7, image: "/photos/176.jpg"},
        {name: 'エリトリア',continent_id: 7, image: "/photos/177.jpg"},
        {name: 'ガーナ',continent_id: 7, image: "/photos/178.jpg"},
        {name: 'カーボベルデ',continent_id: 7, image: "/photos/179.jpg"},
        {name: 'ガボン',continent_id: 7, image: "/photos/180.jpg"},
        {name: 'カメルーン',continent_id: 7, image: "/photos/181.jpg"},
        {name: 'ガンビア',continent_id: 7, image: "/photos/182.jpg"},
        {name: 'ギニア',continent_id: 7, image: "/photos/183.jpg"},
        {name: 'ギニアビサウ',continent_id: 7, image: "/photos/184.jpg"},
        {name: 'コートジボワール',continent_id: 7, image: "/photos/185.jpg"},
        {name: 'コモロ',continent_id: 7, image: "/photos/186.jpg"},
        {name: 'コンゴ共和国',continent_id: 7, image: "/photos/187.jpg"},
        {name: 'コンゴ民主共和国',continent_id: 7, image: "/photos/188.jpg"},
        {name: 'サントメ・プリンシペ',continent_id: 7, image: "/photos/189.jpg"},
        {name: 'ザンビア',continent_id: 7, image: "/photos/190.jpg"},
        {name: 'シエラレオネ',continent_id: 7, image: "/photos/191.jpg"},
        {name: 'ジブチ',continent_id: 7, image: "/photos/192.jpg"},
        {name: 'スーダン',continent_id: 7, image: "/photos/193.jpg"},
        {name: 'エスワティニ',continent_id: 7, image: "/photos/194.jpg"},
        {name: 'セーシェル',continent_id: 7, image: "/photos/195.jpg"},
        {name: '赤道ギニア',continent_id: 7, image: "/photos/196.jpg"},
        {name: 'セネガル',continent_id: 7, image: "/photos/197.jpg"},
        {name: 'タンザニア',continent_id: 7, image: "/photos/198.jpg"},
        {name: 'チャド',continent_id: 7, image: "/photos/199.jpg"},
        {name: 'トーゴ',continent_id: 7, image: "/photos/200.jpg"},
        {name: 'ナイジェリア',continent_id: 7, image: "/photos/201.jpg"},
        {name: 'ナミビア',continent_id: 7, image: "/photos/202.jpg"},
        {name: 'ニジェール',continent_id: 7, image: "/photos/203.jpg"},
        {name: 'ブルキナファソ',continent_id: 7, image: "/photos/204.jpg"},
        {name: 'ブルンジ',continent_id: 7, image: "/photos/205.jpg"},
        {name: 'ベナン',continent_id: 7, image: "/photos/206.jpg"},
        {name: 'ボツワナ',continent_id: 7, image: "/photos/207.jpg"},
        {name: 'マダガスカル',continent_id: 7, image: "/photos/208.jpg"},
        {name: 'マラウイ',continent_id: 7, image: "/photos/209.jpg"},
        {name: 'マリ',continent_id: 7, image: "/photos/210.jpg"},
        {name: 'モーリシャス',continent_id: 7, image: "/photos/211.jpg"},
        {name: 'モーリタニア',continent_id: 7, image: "/photos/212.jpg"},
        {name: 'モザンビーク',continent_id: 7, image: "/photos/213.jpg"},
        {name: 'リビア',continent_id: 7, image: "/photos/214.jpg"},
        {name: 'リベリア',continent_id: 7, image: "/photos/215.jpg"},
        {name: 'ルワンダ',continent_id: 7, image: "/photos/216.jpg"},
        {name: 'レソト',continent_id: 7, image: "/photos/217.jpg"},
        {name: 'レユニオン',continent_id: 7, image: "/photos/218.jpg"}
    ]
)        

Tag.create(
    [
        {name: '観光'},
        {name: 'ホテル'},
        {name: 'ショッピング'},
        {name: 'グルメ'},
        {name: '交通'},
        {name: '治安'},
        {name: 'トラブル'},
        {name: 'ビザ・入国・出国'},
        {name: '通貨・クレジットカード・銀行・ATM'},
        {name: '天候・気候'},
        {name: '郵便・電話'},
        {name: 'Wi-Fiレンタル・Wi-Fiスポット・SIMカード'},
        {name: 'その他の情報'}
      ])
Question.create(
    [
        {title: '今年のハワイ旅行いつから行けるか', body: '東京でも緊急事態宣言が延長となり、なかなかコロナの人数が下がりませんね。ワクチン接種も遅れています。 昨年、５月、８月、年末年始とフライトの変更をし、行けませんでした。 今年は５月にフライトを入れてましたが、これもフライト運休でアウト。 ８月にデルタ入れてます。あと年末年始にデルタとJALで予約入れてます。 ８月は行けないとみてます。 なんせ、ハワイから日本帰国のハードルが高いので、ハワイに行く前に72時間前までに陰性証明をとる。これは仕方ないと思いますが、ハワイから日本へ帰国前にハワイの病院で陰性証明をとり、陰性であっても14日間の自宅待機が義務づけられてるからです。仕事もしてますし、自宅待機はできませんから。 ハワイ大好きなみなさんの、ハワイ旅行はいつから行けるか予想をお聞きしたいです。', user_id: 4,country_id: 85, tag_id: 1,best_answer_id: 1},
        {title: 'ダラス フォートワース国際空港 (DFW)近辺', body: '日本帰国を考えています。ダラス フォートワース国際空港の近辺にPCR検査してる病院はありますか？出来れば短時間で結果が出る病院希望。', user_id: 8,country_id: 83, tag_id: 8,best_answer_id: 4},
        {title: 'ニュージーランドでのスキューバダイビング', body: 'ニュージーランドでのスキューバダイビングについて教えてください。今すぐにはいけませんが、今年コロナの状況が落ち着いたタイミングで、ニュージーランドでダイビングをしたいと思っています。現地の人から時期によっては水が冷たいよと言われました。ウェットスーツを持っていくつもりですが、何ミリのウェットを持っていけばいいでしょうか。シーズン毎に教えていただければ幸いです。またフードは必要でしょうか。よろしくお願いいたします。', user_id: 12,country_id: 137, tag_id: 1},
        {title: '絵画を安く描いてくれるお店ありませんか？', body: 'コロナが終息したらバリ島２.３週間旅行を考えています。約15年ぶりに再訪しようと思うのですが、
            家族写真を預けて、バリ島らしい風景と合成したような絵画を書いてくれるような場所はないでしょうか？
            昔、そういうアートビルみたいのがあったと記憶してるのですが、
            全く別のアジアの街かもしれません。
            似たようなサービスがあれば滞在中にお願いしたいと思っています。
            ご存じの方がいらっしゃれば、情報を下さい。', user_id: 3,country_id: 8, tag_id: 3},
        {title: 'ホイアンでホテルを移動する', body: '海外旅行へ行けるようになったら、ホイアンへ行こうと思っています。
            中学生（時期によっては高校生かも）の娘と、娘の友達とその母親の4人です。
            
            4泊程度になると思うのですが、ホテルを移動しようかどうか迷っています。
            
            旧市街のナイトマーケットへ行きたいので、ナイトマーケットから徒歩で帰れるアンホイ島のホテル。
            ビーチ沿いのお店でのディナーとビーチの朝の散歩もしたいので、アンバンビーチそばのホテル。
            を２泊づつしたらどうかと考えているのですが、今まで海外旅行で同じ都市でホテル移動した事がありません。
            
            パッキング、チェックイン、チェックアウトを考えると時間がもったいないような気もしますが、夜の疲れた時間の移動が少ないほうが楽なような気もします。
            
            もし連泊にするならビーチ沿いのホテルがいいのですが（朝のビーチ散歩が外せないので）、ナイトマーケットからタクシーに乗るには少し歩かなければいけないようなので、それは大変だなぁとも思っています。
            娘の友達が運動苦手なので、自転車移動は考えていません。
            
            
            旧市街とビーチ間の移動時間やタクシーの拾いやすさ（特に夜）や、ホテル移動について、どんな意見でも構いませんので、教えていただけると参考になります。
            よろしくお願いいたします。
            
            ', user_id: 1,country_id: 19, tag_id: 2},
        {title: 'みなさん韓国のスーパーに行ったら何を買いますか？', body: '何を買えばいいかいつも迷ってしまいます。', user_id: 5,country_id: 1, tag_id: 3},
        {title: '国際線搭乗時間一時間前に空港に到着して無事に飛行機に乗れますでしょうか', body: 'ご覧いただき、ありがとうございます。

            不慣れなもので、わかりづらい点もあるかと思いますが、ぜひお力をお貸しいただければと思い質問させていただきます。
            
            今月の後半に、私と母の二人で
            関西国際空港発　中国国際航空で9：00発　
            を利用してタイ・バンコクへ渡航予定です。
            私は京都在住で、関空までそれほど時間がかからず向かうことができるため問題はないのですが、母が当日に岡山からリムジンバスに乗って関空まで向かう予定です。
            そのリムジンバスが第一ターミナルに到着するのが7：55です。
            
            搭乗時間まで一時間ほどしかない上に、母は関空を利用したことがありません。海外渡航経験も少なく、手続き等でもたついてしまう可能性が高いです。私自身まだ関空を利用したことがありませんが、とても広いということは理解しております。
            私がこの度の質問内容とは別に、今月の半ばに関空を利用して海外に行く予定ですので、その際に岡山からのリムジンバス到着口から中国国際航空のカウンターまでの道のりやそのあとの動きなどを動画に撮るか写真を撮り、少しでも母がスムーズに搭乗ゲートまで到着できるようにするつもりです。母の荷物もできるだけ少なくしてもらい、ボストンバッグ一つ程度で走れるようにしてもらう予定です。
            
            このような状態で、無事に搭乗することができますでしょうか？
            母をここで待っていて、ここからは一緒に動いたほうが良い、といったことやここを使うと早く移動できる・人が少ない・ここは迷いやすいなどの情報があればお教えいただきたいです。
            
            支離滅裂かもしれませんが、どうぞよろしくお願い致します', user_id: 10,country_id: 2, tag_id: 8,best_answer_id: 12},
        {title: 'ゴールドコーストで現地の日本人が情報交換できる場所はありますか？', body: 'ゴールドコーストで現地の日本人が情報交換できる場所はありますか？海外旅行にすら行ったことのない身内がゴールドコーストにワーホリで行く予定です。とりあえずバッパーに滞在し、情報を集める予定ですが、現地の日本人が情報交換できるような場所はあるでしょうか？
            パースには日豪センターという場所があり、留学などのアドバイスやみんなが掲示板に情報を貼っていたりして便利でした。また、日本食レストランなどでも情報を貼ってある場所がありました。ですが、ネットで調べたところゴールドコーストにはこのような場所が見つからずとても心配しています。
            みんなが集まり情報交換する場所などがありましたら、どんな小さなものでもかまいませんのでご教示ください。どうぞよろしくお願いいたします。', user_id: 5,country_id: 83, tag_id: 13,best_answer_id: 15},
        {title: 'カタール航空の預入荷物 許容量は？ ', body: '急ぎです！カタール航空・エコノミークラスで羽田からローマに行く場合、公式ホームページには無料預入荷物の許容量が30kgとありますが、これは確かでしょうか？海外予約サイトの予約確認欄に25kgとあるのですが、どちらが正しいのでしょうか？
            今現在25.2kg位でもう減らせなくて困っています(;;)
            25.00kgでないと通らないのでしょうか。ちなみに手機内持ち込み荷物は合わせて6kgくらいで、こちらもギリギリで、バッグのサイズも大きいので心配ですが、そこまで厳しいチェックがあるのでしょうか･･･。', user_id: 2,country_id: 27, tag_id: 5,best_answer_id: 16},
        {title: 'アマゾナス航空の返金について', body: '2020年3月に南米旅行を計画しましたが、コロナの為取り止めました。
            アマゾナス航空のチケットを公式サイトから購入済みだった為、公式サイトの返金要求のページから、今までに4回ほど必要事項を記入して送信しました。
            
            3回目までは”返金には最大2か月程かかる”というようなお決まりの言葉で返信が来ましたが、4回目には返信が来なくなり、本日5回目を送信しようとしたら、身分証明書の画像をアップロードしてもエラーとなり、すべて記入されていないから返金要求が送れないといった状態です。公式ページの苦情フォームも同じ理由で送信できない状態です。
            
            コロナでアマゾナス航空をキャンセルされた方いらっしゃいませんか？返金はされましたか？
            情報を集めたいと思い投稿しました。
            クスコからウユニ、ウユニからイグアス、2名分で15万くらいでした、、、', user_id: 6,country_id: 87, tag_id: 5,best_answer_id: 19},
        {title: 'ロンドンとエジンバラとリヴァプールに行くときの服装', body: '遠いですが来年2月20日～イギリスを女一人旅で回ります。
            リヴァプール、エジンバラ、ロンドンです。
            
            寒さは東京の真冬と同じ程度と記事で読みました。
            ヒートテックと下着は日数分、セーター×2、裏起毛のパンツ×2、ダウンコートぐらいで着回したり現地で服を買おうと考えています。
            
            それと海外はスリや置き引きが多いので薄いサコッシュに貴重品を入れてダウンコートの下に装着するつもりです。
            サブバッグはショルダーバッグよりも現地のスーパーのビニール袋やエコバッグの方が安全みたいな記事も見つけたんですが、きちんと閉められないバッグに物を入れて良いものか分からずにいます。
            
            皆さんはどうされていますか?
            たくさんのご意見を参考に荷造りしたいと思っています。', user_id: 3,country_id: 26, tag_id: 10},
        {title: 'ゴールデンウィークのカトマンズ付近の天候について', body: '今年のゴールデンウィークに、1週間ほどカトマンズに旅行に行こうと思います。
            ガイドブックを見たところ、5月は乾季と書いてあり、それならばナガルコットに1泊して、ヒマラヤを見たいと考えていましたが、5月の天候は良くないと書いてある記事も読みました。
            
            もちろん、その時によると思いますが、実際にゴールデンウィークにカトマンズに行かれた方、天気はいかがでしたか。ヒマラヤは見えるような晴れでしたか。
            かなり空気が悪いとのことなので、マスク等の対策は考えていますが、その他アドバイスや、おすすめのビューポイントもあれば教えて下さい。', user_id: 11,country_id: 12, tag_id: 10},
        {title: 'フランスから日本への配送について', body: 'フランスのオンラインショップから食器を購入したいのですが、「HAPPY POST」という配送方法について仕組みや送料、箱の指定サイズ、保険、日本に届くまでの日数など... ご存知の方がいましたら詳しく教えていただけると助かります。　よろしくお願い致します。', user_id: 7,country_id: 31, tag_id: 11,best_answer_id: 25},
        {title: 'スイス国内の宅急便について', body: 'スイス国内の宅急便はどのようなものがあり、サイズ、料金、かかる日にちなど教えて欲しいです。日本でいうゆうパック、ヤマトなどの物品用です。ジュネーブからベルンまで利用したいと思っています。', user_id: 9,country_id: 28, tag_id: 11},
        {title: 'モアナ近辺について', body: 'ボラボラ島インターコンチモアナの近くに徒歩圏内のレストランやスーパーはありますか？
            レストランの料理の価格はどれくらいでしょうか。スーパーには夜ご飯になるような物やお土産は売っていますか？
            ', user_id: 12,country_id: 144, tag_id: 4,best_answer_id: 28},
        {title: 'ひとりご飯でお値打ちな食事', body: 'シドニーは物価が高いとのことで心配してます。バーでの食事がお得という書き込みを見つけましたがお酒を飲めません。ソフトドリンクで食事をしてもいいですか？水やソフトドリンクの相場を教えてください。またフードコートとかも教えていただけたら嬉しいです', user_id: 13,country_id: 135, tag_id: 4},
        {title: 'メルボルンで誕生日を祝えるお店を教えて下さい', body: 'メルボルンに来週行くのですが、一緒に行く人が誕生日なので
            誕生日をレストランでお祝いしたいです。
            
            ランチでもディナーでも構いません。
            少し値が張っても構いません。
            
            事前予約できると嬉しいです。
            
            よろしくおねがいします！！！', user_id: 16,country_id: 135, tag_id: 4,best_answer_id: 33},
        {title: 'アレルギー（卵、小麦、牛乳）持ち幼児の食事について', body: '旅行時に１歳８か月の子供とメルボルンの友人宅へ遊びに行こうかと計画中です。
            タイトルの通り、子供がパンを食べてアナフィラキシー症状が出たことから、念のため、卵（現在、卵黄は負荷試験を実施して食べられることが判っている）、小麦、牛乳を除去して離乳食を進めています。
            
            基本的には友人宅のキッチンを借りて食事は手作りしようと思ってはいますが、多少は外食もすることになると思います。
            
            オーストラリアの子供の食事事情について、子育て経験がある方や詳しい方からアドバイスを頂きたいです。友人は育児経験がないため、子供の食事事象については意見をもらうことが出来ません。
            
            オーストラリアでは、離乳食完了～大人と同じ食事が出来るまでの間の幼児食（お子様メニューの様なもの）はレストラン等では一般的でしょうか？
            また、アレルギー対応に対しては、欧米の方が日本よりも進んでいると良く聞きますが、オーストラリアではどうなのでしょうか。レストランでの対応メニューや食材等。', user_id: 20,country_id: 135, tag_id: 4,best_answer_id: 35},
        {title: '冬のスウェーデンの就業時間について', body: '冬のスウェーデンは日が暮れるのが早いという理由で、他の時期よりも早くにお店が閉まったり仕事が終わるというのを聞いたことがあります。

            移住の参考に、これが本当なのかどうか知りたいです。どなたかご存じありませんか？', user_id: 14,country_id: 55, tag_id: 4},
        {title: '旧紙幣について', body: 'こちらのサイト、https://1ovely.com/britishmoney/　にて2018年3月1日で以前の１０ポンド札が使えなくなったと知ったのですが、この旧１０ポンド札は日本の銀行で新１０ポンド札に交換、または日本円に交換することはできるのでしょうか？どなたかご存じの方いらっしゃいましたら教えてください。どうぞよろしくお願いいたします。', user_id: 15,country_id: 26, tag_id: 4,best_answer_id: 39},
        {title: 'アイルランドから（乗り継ぎスイス）フランスへ', body: '現在アイルランドに留学中です。（1ヶ月）

            ヨーロッパへ週末旅行を考えているのですが（現段階ではフランス）
            アイルランドからフランスへ行くフライトにスイスでの乗り継ぎがあります。
            
            トランジットが約10時間あり、夜～早朝なので観光には不向きですが友人がいるので会えるなら一度出国しようかと思っています。
            
            もしする場合、入国審査と出国審査を受けるだけで大丈夫なのでしょうか？何か特別な審査や必要な物はありますか？
            
            
            トランジットを使って出国するのが初めてで、且つ海外にも不慣れでわからないことばかりです、、、
            
            
            アイルランドはシェンゲン協定外なのですが、協定内だと入国がスムーズ、協定外だと入国審査が必要というだけのことでしょうか。
            
            よろしくお願いします。', user_id: 19,country_id: 38, tag_id: 1},
        {title: 'E-VISAの申請に関して', body: '旅先から緊急です。
            スマホから申請入力しようとしているのですが、宿泊先住所の入力でどうしてもエラーが消えません。
            次のように入力しています、推測では無く実際試していただけると助かります。
            Freedom Hostel,Azadlıq Avenu,18,floor 2,apartment 31,Nasimi,Baku,AZ1010,Azerbaijan
            何卒宜しくお願い致します。
            ', user_id: 14,country_id: 39, tag_id: 8},
        {title: '道路の渡り方とコンビニ', body: '初めまして小さな質問を２つ載せさせていただきますので、ご存知のほうだけで構いませんので回答いただけると嬉しいです。
            （おそらくドバイに実際に行かれた方はごく普通にご存知だと思うのですが）
            
            
            １．道路の渡り方
            
            ドバイで信号のない道路を渡ると罰金、というのを聞いたことがあります。
            
            私は別に日本でも信号無視や無理な道路の横断はしないので、もちろん従うつもりです。
            
            ・・・が、実際にグーグルマップを見たり、そしてストリートビューを見ても、
            
            「道の反対側に渡る方法」が分かりません。。。。笑
            
            道はものすごい広いのに、横断歩道やら、歩道橋やら、はたまた信号さえ、ほぼ見つけられませんでした。
            
            距離にして50mもないのに、道路の反対側に行く方法が見つからず・・・
            
            ※具体的にはFINANCIAL CENTER駅の近くの、ホテル　デュシタニに泊まるのですが、
            
            ホテルの目の前のシェイクザイードロードをどうやって横断すればいいのか・・・
            
            それ以外にも、普通の道路もどうやって横断すればいいのか・・・
            
            
            そしてホテルディスタニから、ドバイモールまで、直線距離だと、1km程度で、
            
            もしこれが普通に日本の地図だとすれば適当に歩いていれば徒歩でも行けそうなものですが、
            
            ストリートビューを少したどってみると、行ける気がしません・・・・
            
            
            2.コンビニ（スーパーマーケット）ってあるのでしょうか。
            
            別に特別なお店を求めてるわけではありません。
            
            水や飲料、朝食のパンとかを買うことができるような、お店ってあるのでしょうか。
            
            夜間(23:00台）に空いてることが望ましいのですが・・・
            
            地図を見れば、ホテルの近くにありそうなんですが、上記の質問にもあるように、そこにたどり着けるかどうかわかりません笑
            
            このあたりの事情も教えていただけると幸いです。', user_id: 17,country_id: 155, tag_id: 1},
        {title: '見所は？', body: 'なんとなく行ってみたいところ。
            どこを見て回ればよいか、ぜんぜん分かりません。', user_id: 18,country_id: 170, tag_id: 13},
        {title: '', body: '', user_id: 3,country_id: 6, tag_id: 4},
        {title: '', body: '', user_id: 3,country_id: 6, tag_id: 4},
        {title: '', body: '', user_id: 3,country_id: 6, tag_id: 4},
        {title: '', body: '', user_id: 3,country_id: 6, tag_id: 4},
        {title: '', body: '', user_id: 3,country_id: 6, tag_id: 4},
        {title: '', body: '', user_id: 3,country_id: 6, tag_id: 4},
        {title: '', body: '', user_id: 3,country_id: 6, tag_id: 4},
        {title: '', body: '', user_id: 3,country_id: 6, tag_id: 4},
        {title: '', body: '', user_id: 3,country_id: 6, tag_id: 4},

    ])
        
Answer.create(
    [
        {body: 'コロナ前は２０２３のお正月に行きたいなと思っていましたが、今年は当然行けません。仕事でない限り海外は無理だし。来年2022も旅行は無理だと思います。特に海外。 行けたとしても、ワクチンを接種した人に限るとかになるんではないかな。 そしてやっぱり2週間の隔離処置もあるかも。 そしたら今までみたいに自由に旅行ができるのは2024以降じゃないかと。 今ハワイは観光客を受け入れてるけど、アメリカ本土の観光客も来ているからいくらPCRやっていても、その後に発症することもあるから、今行くのは危険だと思います。。', question_id: 1, user_id: 1},
        {body: '今の帰国の隔離義務のようなものは、二週間作ればいいのですから、セットにして考えてハワイ３泊５日にプラス国内１４日という期間でお出かけされれば、特に問題ないのではないですか。', question_id: 1, user_id: 2},
        {body: '私自身は、まだ暫くの間は日本帰国は見合わせる予定なので、まだ実際に利用したわけではないのですが、ダラス=フォートワース空港から車で20分くらいのところに、日系のクリニックがあり、日本帰国用の検査をしてくれます。ホームページでは、30分で結果が出るタイプの検査と記載されています。予約制みたいですので、サイトを確認の上、問い合わせでみてはいかがでしょう。
            【参考URL】http://kuraokaclinic.com/index.html', question_id: 2, user_id: 9},
        {body: 'こんにちは。

            多分「DFW covid-19 testing」でグーグル先生に聞くのは、既にやってらっしゃるとは思いますが・・・
            
            まずはダラス市のサイトです。
            https://dallascityhall.com/Pages/Coronavirus-Testing-Sites.aspx
            現在、どこにいらして、どのようにDFWにアプローチするのか分かりませんが、車は自由に使えるのでしょうか?空港近辺で、となるといずれにしろ車が必要と思いますが、お仕事等の関係で、そういうコストを払っても空港近辺で受けたい、ということなのでしょうか?
            
            何を言いたいかと言うと、国際線搭乗72時間以内の結果(←最新状況の確認が必要)が必要であれば、自宅の近くで探した方がいいのでは、という気もします。また、アメリカン航空利用ならば自宅検査キット、もあるようです。
            https://www.letsgetchecked.com/us/en/american-airlines/
            https://www.letsgetchecked.com/us/en/
            (本サイト・・・)
            AA利用前提で言ってるので、もちろんCDCの基準とかをクリアしているとは思いますが、利用航空会社に使えるか聞いてみる価値はあると思います。
            
            日本側も厳しくなっているので
            https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/kenkou_iryou/covid19_qa_kanrenkigyou_00001.html#Q7-1
            問7にある日本側の「フォーマット」も意識した方がいいと思います。(最新状況はウエブサイトを追っかけてください。)
            
            ご存じとは思いますが、テキサス州は10日より「(コロナウイルス対策を)劇的に緩和」するそうで、日本的感覚(?)で言うと、ちょっとやばそうかな、という気もしますが・・・
            https://www.nikkei.com/article/DGXZQOGN0304A0T00C21A3000000/
            
            その結果、日本側の検疫が厳しくならないうちに帰られた方がいいかも・・・お気をつけてお帰り下さい。', question_id: 2, user_id: 12},
        {body: 'NZでもクック諸島と南/北島でやるかで水温は10度くらい違うと思いますが。
            南/北島で海水浴しかした事ありませんが、夏でも水は冷たかった。南/北島でやるなら、ウェットスーツの下に着るインナーウェットスーツと、保温のダイビング用の目出し帽キャップ、厚めの手袋を持って行きますかね。　目出し帽キャップ、厚めの手袋なら、アマゾンの中華製でカワイイのが有るんじゃないでしょうか？　でもアマゾン中華製品は、臭かったり、サイズがおかしかったりするので早めに買って試着してサイズ確認したり、洗剤つけ置き洗いすると良いと思います。　変なのでもアマゾンは1ヶ月以内に返品か返金申請すればお金は戻ってきますよ。', question_id: 3, user_id: 4},
        {body: 'はじめまして。

            私でお役に立てるか分かりませんが、気になる質問だったので回答させていただきます。
            
            2020年2月、ちょうど１年ほど前ですが、バリ島のウブドで絵画の体験レッスンを受けました。
            
            ウブドのマス村にある『Rindhu House』というカルチャースクールで、下記の公式サイトから予約できます。
            
            RINDU HOUSE 公式サイト ◆ http://www.rindu-house.com/index.html
            
            現地スタッフはバリ在住の日本人女性で感じのいい方でした。言葉は日本語だけでOKで、英語はほとんど不要でした。現地バリニーズスタッフや絵の先生と少しだけ簡単な英語が出来れば、コミュニケーションはほぼ問題ありません。
            
            こちらは絵画以外にも、バリの様々な伝統芸能（バリニーズ料理、バリニーズダンス、ヨガ、バティックなどの伝統工芸などなど）を体験できるスクールでした。ウブド、特にマス村のあたりにはこういった日本人経営のカルチャーセンターみたいなのが多いです。
            
            バリ島といっても広いので、ご滞在されるのが南部エリアだと分かりかねるのですが、ウブドでしたら芸術が盛んなので、こういった場所で良ければいろいろ見つかるかもしれません。
            
            私は自分で絵を描いてみたかったので、先生に教えてもらうコースを選びましたが、ご家族の写真を預けて描いてもらうというのも、メールでそのように希望内容をお願いすれば、日本人スタッフの方が見積もりして下さって、現地でプロの絵の先生に描いていただくということも出来るかもしれません。
            
            バリ島はけっこう交渉次第でなんでもアリですし、ましてコロナの後ともなれば、どんなことでも大歓迎で（よほど無理を言わない限りは）やってもらえるとは思うので、ぜひ交渉してみて下さい。
            ', question_id: 4, user_id: 6},
        {body: '「どんな意見でも構いません」というので、
            「朝のビーチ散歩が外せない」ということでしたら、
            
            「ビーチ沿いのホテルを４連泊予約なさり、旧市街に行く日だけ、一泊寝るだけのホテルを別途予約」なされば解決するのではないでしょうか？
            
            荷物は最小限のものだけ持って、部屋も片付けずに、午後すきな時間に「外出」して旧市街ナイトマーケットへ。
            
            荷物のパッキング、午前中のチェックウトなどは不要で、夜間のタクシー移動も不要です。
            翌朝、明るくなって自分の部屋に朝帰りなされば、ビーチの散策もできるでしょう。
            
            一泊分の費用は増えますが、それほど高級ではないホテルならば、メリットの方が大きいように感じますが。', question_id: 5, user_id: 6},
        {body: 'こんにちは(^_-)-☆
            韓国ってたくさん欲しいものあるから困りますよね?
            
            最近買うのは
            乾燥わかめ
            ダシダの無添加のもの
            トッポギの餅（冷凍保存してます）
            マッコリ（漏れることもあるのでビニール２枚とタオルも巻きます。
            デパ地下のパンやお菓子
            （１０年前はケーキもホールで買って帰りましたよ(*^^*)）
            キムパップもここ最近買います
            箸スプーンは揃ったら買わないけど、重宝してますよ。
            
            
            いつもスーツケースパンパンです(+o+)', question_id: 6, user_id: 3},
        {body: '韓国の物は、ほとんどドンキホ?テや格安店で売られていますので、日本であまり売られていない物を選んで買っています。

            １．参鶏湯の真空パック
            ２．コンビニに売っているトッポキのスナック
            ３．コチュジャン
            ４．最近は高くなってきたが、さきいかとするめ
            ５．あかすり用軍手
            　ぐらいかな。
            
            　焼き肉などは日本の方が美味しく、安いと思うのですが', question_id: 6, user_id: 4},
        {body: '近所に配るなら南大門市場の海苔がたいへん安いですよ。親しい人には今ソウルで一番注目されている「カロスギル」でお洒落なお土産が一杯あります。お酒が好きな人にはサムゲタで注目されている「土俗村」で昼食がてらここのお土産の焼酎が
            お勧めです。お酒は飛行機内での持ち込みは禁止されていますので、トランクにいれて預ければ問題ありません。', question_id: 6, user_id: 2},
        {body: 'ダシダを買います。基本は牛肉味。帰ってから、いろんな韓国料理にチャレンジします！
            あとはトッポギスナックの小さいサイズをばらまきように買います。', question_id: 6, user_id: 11},
        {body: 'いま初めて一人でニューヨークにいった日の苦い思い出を思い出しました
            相生から大阪に向かう新幹線が遅れ 関空に着くのが二時間前につかないと言う事態がありました
            結果 空港には一時間前にはつきましたが事前に空港に 乗る飛行機の便名等を伝えて二時間前に着かない旨を伝えました
            空港に着き チェックインカウンターに着くと空港職員がきました
            荷物は空港職員に任せてダッシュで入国審査。なんとか間に合いました
            もう二度とこんな経験はしたくないですそれ以来 三時間前には着くようにかんがえてます', question_id: 7, user_id: 7},
        {body: 'The last P.S.

            ご決心がお付きになった様ですが・・・
            
            最悪の場合に二人分を無駄にするよりも、あなたお一人で出発する事を決めて置かれた方が損害が少ないと思います。
            
            酷な意見ですが私の最終回答です。
            
            Please do your best!
            
            ', question_id: 7, user_id: 2},
        {body: 'こんばんは。

            もう10年以上前のことですが、
            何か所か日本人向けの掲示板がありました。
            日系の旅行代理店の中、ニッテルという携帯電話やさんの入っていたモールの中などです。
            バッパーにも日本人向け情報もありました。
            スーパーなどの掲示板にも日本人向け情報ありました。
            それ以外に日本人向けフリーペーパーなどもインフォメーションセンターに置いてあります。
            
            ワーホリでしたらサポートしてくれる会社もありますし、
            語学学校に行けばたくさんの先輩日本人ワーホリメーカに会えます。
            また、クラブでの交流も比較的盛んです。
            
            ワーホリの目的にもよりますが、日本人で情報交換することはいい面も悪い面もあると思いますが・・・。
            
            10年も前の情報ですが、ほかにもお役に立てることがあればできるだけ情報提供させてもらいますね。', question_id: 8, user_id: 7},
        {body: 'ゴールドコーストは行ったことがないのですが、こういうところを当たってみたらいかがでしょう？

            http://www.jsgc.org.au/
            http://www.atcity.info/goldcoast/
            http://japanese-church.com/
            http://www.lady-go-aus.com/2015/04/15/work/
            
            
            また、フェイスブックに、ゴールドコースト在住者のコミュニティがあるので、交流や情報収集に役立つと思います。', question_id: 8, user_id: 10},
        {body: 'カタール航空で無料手荷物の重量オーバー経験はありませんが、
            「０．２キロでも超過したら、乗せて貰えない」わけではないので、
            そんなにご心配なさることはないと思います。割り切られて、
            
            次の選択肢の何れかを、お選びになればよいだけだと思います。
            
            １．空港に３時間以上前に行き、カウンターで計量、結果によって次のいずれかの方法で乗る。
            
            ①搭乗券自体が実は２５キロ以上無料のものだったり、（係員によっては幸運で）０．５キロ未満の超過は目こぼしされたりすれば、ラッキー。
            
            ②０．２キロ超過でも、超過料金を必ず払えと厳格であれば、
            
            参考URLにある
            ③日本からヨーロッパの、定価４５米ドルの「空港内窓口で、ご出発の3時間前までに超過手荷物をご購入の場合には最大20%までの割引が適用されます。」という割引料金を支払う。提携などで多少の違いはあっても、この程度でしょう。
            
            あるいは、
            ④（時間に余裕があるので）荷物を解いて、衣服１枚くらい重ね着して、超過ナシで乗る。
            
            
            ２．空港に、チェックイン締め切りに近い時刻に行き、カウンターで計量、結果によって
            
            ⑤厳格であれば、やむなく定価の超過手数料を素早く払って乗る。
            
            ⑥無料範囲内とか、本来有料だが（係員によっては、急いで通す必要があると考え、目こぼし許容量が増え）て無料、ならラッキー。
            
            しかし、目こぼしがダメな場合、定価になってしまうリスクがあるのと、コロナ対策などでセキュリティチェックなどに手間取り、乗り逃しのリスクも増えるでしょう。
            
            ２は、余り、お勧めは出来ないです。
            
            【参考URL】https://www.qatarairways.com/ja-jp/baggage/excess.html
            
            ', question_id: 9, user_id: 12},
        {body: ' エコノミ－でもスタンダ－ドとコンビニエンスではバゲ－ジアロ－ワンスが違います。航空券を確かめたらどうですか？最安のクラスだと25Kです。

            荷物の重量が厳格かどうかはここで聞いても誰も答えられないと思います。駄目なら最悪、空港で衣服を出してその場で重ね着すると良いかもしれない、そんな事をやっている人を何度も見掛けた。', question_id: 9, user_id: 1},
        {body: '数年前にamaszonasを利用時に日本からメ－ルでいろいろと問い合わせた時に
            fernando.subieta@amaszonas.comこちらの方より丁寧な返信メ－ルを頂きました。
            まだamaszonasに勤務されていれば返信して貰えると思いますが。', question_id: 10, user_id: 10},
        {body: 'アマゾナス航空のチケットを持ってるわけではないのですが・・・。

            二点確認ですが、まず、買ったチケットはそもそも「返金可能」のチケット(non refundableではない)である、ということですよね。もう一点、予約した便は(国内の感染予防のためとか、理由に関係なく)実際に飛んだのでしょうか?それとも欠航したのでしょうか?
            
            前者の場合は、飛ぶ前にキャンセル(利用規定に則ったキャンセル)したのだったら、強く言えると思いますし、また、欠航したのだったら、これも最低限でも代替便の提示とかが必要ですし、返金でも強く言えます。これが例えばキャンセル期限が過ぎていたのにキャンセル手続きをした、とか言う場合は、例えその時はペルー政府が入国を禁止していた(=理不尽な理由だったにしても)にしても、状況が違ってきます。
            
            要はルール(=輸送約款)上返金すべきお金なのか、ルール上は返さなくてもいいけど(日本の航空会社の多くがやったような)「善意」に頼る交渉なのか、ははっきりしておいた方がいい、という意味です。それによって以下に書くことも若干ニュアンスが異なるかも知れません。
            
            本題に戻ると
            https://www.amaszonas.com/en-gl/customer-service/362-customer-service-gl/refund
            この画面が、五回目からうまく作動しなくなった、ということですよね。
            多分ですが、この画面だとその他大勢(きっとみんな案内されていると思うので)に埋もれる可能性があるので、べたな方法ですが、なるべく目立つ方法で連携すべき、と思います。
            
            苦情フォーム、というのはこちらのことですか?
            https://www.amaszonas.com/en-gl/customer-service/360-customer-service-gl/complaints
            これもダメなら、フェイスブックのページ
            https://m.facebook.com/AmaszonasLineaAerea/
            とかからでもいいので、なるべく、生メールかDMみたいな方法で題名に「the last NOTICE!」とか「URGENT! URGENT! URGENT!」みたいな目立つ見出しにして、しつこく返金を促すしかないのでは、と思います。(私はスペイン語でなく、英語で十分と思います。)
            
            ちなみに「Amazonas refund」とかで検索すると、トリップアドバイザーの英語版なんかでそこそこ引っかかってきて、かなり厳しそうな(コロナウイルスとは関係ない返金でも)雰囲気ですが、こういうのは成功した人はあまり書かない(!)ので、とりあえずしぶとくやってみるしかないと思います。時間的な問題では、他の航空会社でも搭乗予定日の何か月も後で返金されたという例もたくさんあるので、そこは気長に(?)対応すべきではないでしょうか。
            
            また、私が見る限りでは「Amaszonas Linea Aereaの経営危機」というのは、グーグル先生のスペイン語、英語でも引っかかってこなかったです。この辺の話は一般論は危険(?)なので、もちろん、「アマゾナス航空の経営危機」というのでアラートが出るように注目しておいた方がいいとは思いますが、せめて、ロイター等の大手通信社の記事とかのエビデンスがないと、私は信じません・・・。ちなみに私は昔倒産した某日本の航空会社の国際線(国内線は金額も小さいし、乗らないと支障が出るので乗りますが)なんか、信用してないので絶対乗りませんけどね。・・・
            
            うまく交渉の成果が上がることをお祈りします。', question_id: 10, user_id: 11},
        {body: '残念ながら倒産しないまでも、経営不良な事はコロナ禍の今明らかなので暫く様子を見るしかありませんね。
            世界中で航空会社が倒産している現状、返金を期待する方が無理があります。ルフトハンザ、エールフランス、ANAやJALだって政府のサポートと莫大な借金で倒産を先延ばししているだけの状態です。
            ましてやアマゾナスなんて吹けば飛ぶような弱小会社。キャンセルに伴いその分を将来のバウチャーにすら変更できないでダンマリを決め込んだ時点で諦めるべきです。顧客から得た資金は既に燃料代や人件費に消えています。
            多分海外からのクレームに対応する人材すら確保出来ない状態だと思いますよ。ウェブサイトの維持すらできなくなっているかも。最悪、あなたの個人情報を誰かに売って現金化される事も有り得ます。
            私達もルフトハンザのフライトがキャンセルされましたが、同じルートでの航空券が引き換え可能なバウチャー？が出ただけですので会社が潰れない事を祈るだけです。ラテンアメリカで財務的に多少はあてになるのはAeroMexicoかLATAM程度でその他は皆クズ会社ですから。借金だらけでデフォルトしている貧乏国の航空会社なら猶更です。
            
            ドイツを代表するナショナルフラッグですらこの状態ですから財務内容はルフトハンザの５％にも満たない、政府もあてにならない貧乏国家の航空会社に何を期待できるでしょうか？
            個人で予約したフライトならば個人で対処するしかありません。訴訟する覚悟はありますか？スペイン語は出来ますか？出来なければむごい様ですが諦めるか静観するしかありません。来年バウチャーが出ればラッキーくらいに思っていてはどうでしょう。
            代理店や旅行会社経由で予約したとしても、今対応出来る様な財務状態の会社は皆無です。
            悔しいかもしれませんが、海外では明確に「倒産」という法的状態にならないケースが多いので日本の常識では測れません。
            昔私達は「安物買いの銭失い」「安かろう悪かろう」というセリフが常識でしたが、最近では随分無防備になったものです。
            個人でのリスク管理が甘くなったのでしょうね。
            御免なさいね、でも貴方だけではなく世界中で皆同じ目に逢っているんですよ。', question_id: 10, user_id: 12},
        {body: 'こんにちは
            一人旅楽しみですね。
            
            服装に関しては、私の行った時期がGWだったので
            参考にはならないかとも思いますが、
            一応お知らせしますね。
            去年のGWはとても寒くて真冬の服装でした。
            現地に暮らす日本の方に聞くと、
            イギリスの天気は分からないと言っていました。
            
            さてバックですが、
            私の場合、パスポートや現金など余り出したりしまったりしないものは
            コートの中に小さなバックでタスキ掛けにしていました。(コートの中と言うか、セーターの中)
            その他の物(ガイドブックやハンカチ、カードや小銭など)はレスポのショルダーに入れて
            これもコートの上にタスキ掛けです。
            カードが入っている為、いつもファスナーの口を
            手で持っていました。
            食事の時は必ず膝の上に乗せていました。
            被害にあってからでは、せっかくの旅行が台無しになってしまうので、念には念を入れる形です。
            そのおかげか、人混みでギュウギュウの中のイベントでも何も取られる事なく楽しめました。
            
            どうか気をつけて楽しんで来て下さいね！', question_id: 11, user_id: 2},
        {body: 'こんにちは。

            女一人旅、いいですね！
            
            北の方ですとグラスゴー、アイラ島に旅行に行った事があります。季節は7月末でしたが海風もありライトダウンを着ていました。ロンドンの夏でもヒンヤリする事もあるので真冬なら手袋などがあると良いと思います。ロンドンの物価も決して安くないので下着系だけ洗濯や日数分あれば他は着まわせそうな気がします。私は消臭スプレー持参していくこともしばしば。
            
            南米でカメラをすられた経験から油断しないようにしています。
            海外に行く時はポーターの斜め掛けを前にして歩いています。
            少しだけ改良してチャック部分に二重リング、ナスカンを付け、カチッと閉められるようにしています（うっかり癖でバッグを後ろにしてしまっても大丈夫なように）さらにお財布は日本で使っているブランド物の財布ではなく旅行用にし、リール付ストラップでバッグから離れないようにしています(自身の置忘れ対策も兼ねて)
            
            現地のスーパー袋に入れていてもスリには旅行者なんてもろバレな気もします。うっかり油断した時にも大丈夫な対策を練っておくと良いかもしれませんね。
            
            ロンドン旅行記書いてますので宜しかったら参考になさってみてください。
            楽しい旅行になりますように！
            
            【参考URL】https://4travel.jp/travelogue/11391873', question_id: 11, user_id: 4},
        {body: '2年前のGWにナガルコット・ポカラに行きました。その時の気候は、前線が数日おきに通過するもので（多分例年そうなのだと思いますが）、2-3日晴れると、2-3日曇・雨というものでした。私も天気を重要視していたので、ナガルコットに行くか。ポカラに行くかはカトマンズに到着してから決めました。ヒマラヤを見たかったのでポカラ重視だったので、ポカラを先に行き、ポカラはなんとか晴れでしたが（カトマンズに移動する日は土砂降りの雨）、ナガルコットは曇・雨でした。但し、ナガルコットの麓はそれ程天気は悪くなかったので、ナガルコットの標高が若干高いので天気が悪かっただけかもしれません。
            カトマンズは空気が悪いとのことでしたが、それ程悪いという印象はありませんでした。計画停電もあるとの情報でしたが、一回もありませんでした。
            
            【参考URL】https://ssl.4travel.jp/tcs/t/editalbum/edit/11508030/', question_id: 12, user_id: 1},
        {body: '5月は微妙な時期だと思います。日本の梅雨入りのように雨季に入ると毎日が雨になります。特にヒマラヤを見るには天候が一番と思います。見れないこともあることを覚悟していった方が良いと思います。昨年の5月に行った時の旅行記がありますので参考にしてください。

            【参考URL】https://4travel.jp/travelogue/11495595', question_id: 12, user_id: 3},
        {body: '国際ショッピングしたことないですが、フランスのユニフォームのTシャツをみたら、日本へ35ユーロでDHLてありましたので、普通の郵便局から郵便局の小包とは違うのかなと思います。

            https://www.dhl.co.jp/exp-ja/express/import_services.html
            
            個人からイタリアから飛行機便でTシャツ送ってきたときは、中身は全部開けてきてました。一週間くらいでしょうか。
            韓国人が韓国のりやラーメンを一度段ボールで送ってきたときは、中は空いてなかったので向こうの国で開けてるのかな。
            やはりフランスも郵便局からのはどうなんだろとは思います。
            
            ハッピーポストとやると、imxグループとでますから、宅急便でしょうか
            
            https://happy-post.com/fr/envoyer
            https://www.imxpostal.com/en/partners/
            
            税関のページ
            https://www.customs.go.jp/tsukan/kojinyunyu.htm#courier', question_id: 13, user_id: 11},
        {body: '私は利用していないですがスイスの郵便局に宅急便があります。
            https://www.post.ch/en/sending-parcels/express-and-courier', question_id: 14, user_id:10},
        {body: 'こんにちは。

            今年7月にスイス旅行をしたときにホテルに忘れ物をして、次の宿泊地でホテルに連絡して宅急便で送ってもらいました。小包程度の大きさで翌日に到着、料金は2500円くらいだったと思います。スイスフランでクレジットカード支払いです。
            　ルガーノの駅近くのホテルからルッツェルンのホテル（駅から少し遠い）に送ってもらいました。鉄道だと特急で2時間くらいの距離なので、翌日配達が可能だったと思います。ジュネーブ・ベルン間も鉄道があるので、依頼すれば翌日配達も可能だと思いますよ。
            
            　ホテルのフロントで預けて、着いたのもホテルのフロントです。部屋まで持ってきてもらえました。帰国日が迫っていたので、翌日配達にしてもらいましたが、他にも選択肢はあったようです。
            今メールを探したのですが、見当たりませんので、詳しくはわかりません。
            　宿泊ホテルのフロントで訊ねたらいかがでしょうか。場所によっても違うと思いますので。
            　スイスは全土に鉄道が張り巡らされていて、物品の配送も鉄道を使っているようなのでとても便利なように感じました。
            
            楽しい旅を！
            まやさん', question_id: 14, user_id: 5},
        {body: 'こんにちは。

            モアナの周辺にはいくつかレストランがあります。
            ＊レストラン・ファレマヌイア（ラッキーハウス）
            モアナから歩いて１分ほど。
            ステーキやピザなどが人気です。
            大酒飲み＆大食いの２人で10000cfp前後です。
            お酒をあまり召し上がらないのであればもっと安いです。
            ピザを頼むと更に安く済みます。
            おススメのレストランです。
            
            ＊ボラボラビーチクラブ
            モアナから歩いて2分ほど。
            絶景の海を見ながらランチ。素敵な夕陽を見ながらディナー可能。
            ボラボラで有名なボラボラヨットクラブの姉妹店です。
            なんでも美味しいかな。カルパッチョなどがおススメ。
            予算的には同じく10000CFP前後です。
            
            
            ＊マティラビーチレストラン
            モアナから歩いて7～8分。送迎サービスがあるので、コンシェルジュに予約時に頼んでください。予約だけだと歩いていかないといけなくなります。
            絶景の海を見ながらランチ。素敵な夕陽を見ながらディナー可能。
            日本食（刺身や寿司や天ぷらなど）もあります。ステーキももちろんあります。
            お酒含めると12000xpf程度。
            
            
            
            ＊ルロット・マティラ
            メニュー数は少ないですが、大抵美味しいです。
            野菜炒めは、日本人好みの味で白ご飯欲しくなります。付け合わせでご飯も選べます。
            海は見えないので、天気の良くない日もしくは夜に行かれると良いかもです。
            他のレストランのように立派なメニューはありませんが、素朴で美味しいです。
            （ここだけは虫よけ必須）
            
            
            ランチ専用のお店は
            ＊スナック・オトアマナ
            マティラビーチ沿いにあります。
            モアナからすぐ。
            お気に入りのお店です。
            パニーニやハンバーガーも美味しいし、ポワソンクリュも美味しいです。
            絶景です♪
            
            ＊スナック・モイヘレ
            オトアマナの隣です。
            ハンバーガーもありますが、時によって当たりハズレがあります。
            ここで食べる時は大抵、チャオ麺にしています。独特のチャオ麺です。
            絶景です♪
            
            ＊スナック・マティラ
            歩くと結構暑くてしんどいかも。チャリンコならOK。
            マティラビーチ沿いにあるスナック。
            オトアマナがあるなら、わざわざ行くほどのことでもない気はします。
            メニューは多彩ですし、ここも絶景です。
            
            
            <<スーパー>>
            ＊マガサン・マティラ
            モアナから歩いて1分ほど。
            レストラン・ファレマヌイアの向かいにあります。
            なんでもおいてあります。サンドウィッチ・お惣菜・チキン丸焼き・フランスパン・サラダ。
            ハムとサラダとフランスパン買ってランチにしてました。
            カップ麺もあります。
            滞在中のビールはここで調達して節約してました（笑）
            
            
            ＊ティアレ・マーケット
            モアナから7～8分ほど歩きます。
            ホテル・マイタイポリネシアを過ぎたあたりにあります。
            ここもなんでもありますが、マガサン・マティラが開いてるならわざわざ行かなくても、マガサン・マティラで十分です。
            昔はこの辺りでスーパーはティアレマーケットしかなかったので有名ですが、充実度はマガサン・マティラの方が高いと思います。
            ただ、時々カンパーニュのフランスパン売ってます。
            
            
            ボラボラを4～5泊されるのであれば、せっかくですので毎晩違うレストランに行かれた方が良い想い出になりそうですよ。
            泳ぎ疲れた時は、ホテルのルームサービスもありですが。
            ヴァイタペ村あたりにも、美味しいレストラン、セントジェームスやボラボラヨットクラブなどがありますので、ぜひお試しください。
            送迎サービスありますから安心です。
            
            <<お土産屋さん>>
            ＊ティアレマーケット・ショップ
            モアナから歩いてすぐ。ルロット・マティラの隣です。
            お土産やさんです。開いていないことも多く、謎の多いお店です。
            空いてたら覗いてみてください。
            
            ＊マティラビーチの少し遠い所に、香水と雑貨のセレクトショップやジェラート屋さんがあったはずです。
            
            お土産買うなら、ヴァイタペの村に出るか、タヒチ島のパペーテという街か、タヒチ島のホテルの近くのカルフールで買った方が良いです。
            
            
            その他、詳細をつづった拙ブログを覗いてみてください！
            https://ameblo.jp/borabora-tiare/
            
            
            【参考URL】https://ameblo.jp/borabora-tiare/', question_id: 15, user_id: 4},
        {body: 'はじめまして

            ２０１６年３月に新婚旅行でボラボラ島のパールビーチに泊まりましたので、参考になりませんが、旅行中にマティラビーチに海水浴しに遊びに行きました。
            マティラビーチ近くのレストランは、道すがら点在しているのを見かけました。レストランへは、行きませんでした。ビーチ近くの個人商店『MAGASIN MATIRA』でお酒・フランスパン・絵葉書などを買いました。ローカルな感じのお店でした。
            バイタぺのほうへ行けばお店がいっぱいありました。
            
            ボラボラ島タヒチ島で、緑色のグレープフルーツのジャムを買いました。クッキーも買いました。
            
            ボラボラ島では、野良犬そこかしこでのんびり暮らしています。狂犬病などの恐れから触ったりしませんでした。こちらから危害を加えなければ、犬も危害を加えてくることはないと思います。
            
            ボラボラ島は星空が綺麗です。カメラと三脚があれば、月が出てなければきれいな写真が撮影できるかもしれません。水中撮影できるカメラも持っていきました。今でしたら動画撮影できるジンバルカメラを持って行ったことでしょう（当時はあまり普及していませんでした）。
            
            パールビーチでウエディングフォトをボラボラ島にいる日本人マキさんにお願いしました。『ボラボラ　マキ　スタジオ』で検索で見つかります。
            http://borabora-photo.com/
            その方にメールで現地のことを問い合わせてみるのも手かもしれません。
            
            【参考URL】http://borabora-photo.com/', question_id: 15, user_id: 8},
        {body: 'こんにちは。
            
            シドニーの西の郊外に、カブラマタ(Cabramatta)と言う南半球最大のベトナム人街があります。
            こちらは、中心部（シティ）と比較し、食事代の相場が比較的安い場所です。
            ベトナム等のアジア飯がOKであれば、ベトナム人街の観光がてら、チャレンジするのも良いかと思います。
            一味違うシドニ観光ができます、ご検討くださいね。
            
            手前味噌になりますが、以下、私の口コミです。ご参考までに。
            https://4travel.jp/overseas/area/oceania_micronesia/australia/sydney/kankospot/10553333/tips/12751718/
            
            あと、似たような内容ですが、イーストウッド(Eastwood)には、コリアンタウンがあります。
            こちらは2回ほど行っただけなので、あまり詳しくないですが、こちらでも比較的安価に食事した記憶があります。
            
            良い旅を！
            ', question_id: 16, user_id: 14},
        {body: 'こんにちは。

            僕は一人でもレストランやフィッシュ・マーケットのお店やフードコートでも食べましたが、それなりの値段でした。なので、一部はスーパーなどで買った食べ物ですませた時もあります。
            
            よかったのは、ワールドスクエアです。各国のレストランもありますし、地下には食品売り場があり、そこでお寿司を買いました。お茶も売っていたと思います。わざわざバーで食事をするよりはましかと思いますが・・
            https://www.sydneynavi.com/shop/86/
            
            フードコートはシドニー・セントラル・プラザ・フードコートに行くとアジア系のお店が多くて安心できました。
            https://www.sydneynavi.com/food/8/
            
            ロックスにもあったのですが、中には入りませんでした。
            https://campbellsstores.com.au/
            
            ウィンターガーデンにもありましたが、食べませんでした。
            http://www.thewintergarden.com.au/Core/Content/Directory/Content7693.aspx', question_id: 15, user_id: 15},
        {body: '海辺のレストラン（海が見えるレストラン）が昼でも夜でも良い感じですよ。
            私は、ドッグランズスタジアム近くのレストランを利用しました。観光地としても紹介されるので、ある程度整ったレストランがいくつか見つかると思います。
            日本で祝うのとは、違う雰因気で是非お祝いしたいと思います。お祝い事など、日本より派手にするイメージがあります。バースデーカードも種類ありますので、珍しい（ちょっと驚かせるつもりで）のを差し上げてはどうでしょうか？デパートや、郵便局にもカード売ってます。', question_id: 17, user_id: 17},
        {body: 'Hardware Laneにある「Grill steak and seafood」でカンガルーのお肉でお祝いなんていかが？
            若干の獣臭さはありますが、バルサミコ酢のソースを使っているのでさほど気になりません。
            もちろん普通のビーフやラムのステーキ、シーフードもあります。
            外の席だと生演奏の音楽も聞こえて、なかなかよかったですよ。
            ウェブから直接予約できます。
            
            
            【参考URL】http://www.grillsteakseafood.com.au/#grill-steak-seafood', question_id: 17, user_id: 18},
        {body: 'こんにちは。

            メルボルンで美味しかったイタリアンのお店で「グロッシ」があります。１階は気さくなグリル、２階が本格的なイタリアンです。テレビ番組「オーストラリア版・料理の鉄人」で、イタリア料理の鉄人として知られるガイ・グロッシ氏の看板レストランです。僕はグリルに行きましたが、いつ行っても満席でした。
            https://www.tour.ne.jp/w_review/MEL/restaurant/spot/116413/
            
            　ここはメールでは予約は受け付けていませんが、次のサイトで予約を受け付けています。
            https://www.florentino.com.au/grill/
            
            つまり、左上の「Book Now 」をクリックすると、２階の Florenzino か、１階の　Grill か聞いてきますので、例えば、２階だったら、その下の「Book now」をクリックすると、ポップアップで画面がでてきます。
            
            そこには、「もし、好ましい時間の食事の予約がオンラインでできなかったら、又は１０人以上の予約が必要なら、直接次に電話してください」とのことです。
            03 9662 1811
            
            人数がそれ以下だったら、その下の「Proceed with reservation 」をクリックします。次の画面で人数、ランチかディナーかを選択すると、可能な日付がでてきますので、それで予約してください。', question_id: 17, user_id: 19},
        {body: 'こんにちは！
            20年前に交換留学でメルボルンに住み、今は毎年1ヶ月ほどあっちに行く者です。
            
            オーストラリアはアレルギー持ちの多い国で大変多くのお店がグルテンフリーなど対応したメニューはあると思います（お店によってなのでその点を調査した方がいいかもしれません）
            一応参考リンクを貼っておきますね！
            
            外食はどのようなレベルを想定なさっているかわかりませんが、キッズメニューとして豊富に用意してるような店はあるかどうか不明です。
            私のあっちの家族の子供たちと外食は子供としていますが、キッズメニューはあったりなかったり。これは他の方がわかるといいですね。
            
            夜の外食ならグルテンフリーメニューがあるお店から選んで、さらに卵、牛乳がNGな件を伝えれば教えてくれるかと。
            それなりのレストランなら前菜サイズ（オントレー）で頼めばいいのかなと思います。
            
            昼間の外食ならばグルテンフリーメニューが豊富なのカフェは多くありますから、これまた追加条件を伝えればいいかと思います。
            
            食文化は素晴らしい街です。楽しんでいらしてください！
            
            【参考URL】https://www.theurbanlist.com/melbourne/a-list/13-top-gluten-free-dinners-melbourne', question_id: 18, user_id: 13},
        {body: '就業時間は年間を通じて同じです。
            クリスマス、イースター、夏至祭の時は、
            若干早まったり休業になるところもあります。', question_id: 19, user_id: 18},
        {body: 'こんにちは
            スウェーデン最大級のデパートAhlensの営業時間Opening timesは年間を通じて同じのようです。
            https://www.ahlens.se/cms/in-english
            一緒に仕事をした自動車会社ローバーでの経験ですが、イギリスでも冬は15時過ぎると暗くなり始めるので、週末はその時刻になると帰宅してしまう社員が多かったです。
            
            具体的に質問事項を整理してスウェーデン大使館に問い合わせることをお奨めします。
            https://m.facebook.com/EmbassyofSwedenTokyo/?locale=ja_JP
            電話　03－5562－5050
            ', question_id: 19, user_id: 16},
        {body: 'イギリスはすぐ使えなくなりますね。パブで払おうとしてイングランド銀行へいかなきゃダメと言われ、
            東京の香港上海銀行で何故か両替できたことがあります。
            これ旧札だけどいいの？とはこちらからは訊きませんでした。', question_id: 20, user_id: 4},
        {body: '私は一昨年の春に行きましたが、￡10、￡5札が変わっています。郵便局が出来るかは分かりませんが、bank of Englandで交換しました。￡1コインも変わっていましたが、銀行口座がないとダメだと言われました。
            日本で出来るかは分かりませんが、変わってからしばらく経っているので無理なのでは？', question_id: 20, user_id: 9},
        {body: 'まず質問者さんの場合は、シェンゲン協定外のアイルランドから、協定内のスイスに入るわけですから、スイスで入国審査を受けるわけです。なので、スイスでお友達に会おうが会うまいが、必然的にスイスには入国するわけです。

            乗り換えの待ち時間に入国する際の出入国の方法は、通常の方法と同じです。もし入国審査で入国目的について聞かれたら、素直に「乗り換え」とか「友人に会う」と言えば大丈夫です。
            
            シェンゲン協定の加盟国内の移動の際には、飛行機でも車でも列車でも、国境での出入国審査はありません。なので質問者さんの場合、スイスからフランス行きの飛行機に乗る際は、出国審査は無く、セキュリティーチェックのみです。簡単に考えれば、シェンゲン協定の加盟国内は１つの国みたいなものなので、つまり日本で言えば国内線に乗るようなものなのです。なのでフランスに到着した際には入国審査は無いので、もし荷物を預けていなければ、飛行機から降りたらそのまま出るだけです。帰りも、もしスイス経由なら、行きの逆になります（つまりスイスで出国、ということです）。
            
            もう1度説明しますが、例えば日本からKLMオランダ航空でスペインに行く場合、オランダもスペインもシェンゲン協定加盟国なので、加盟国内（別の言い方をすれば、EU）の入国（審査）はアムステルダムで行われます。ただし「EU＝シェンゲン協定加盟国」ではないので、詳しくは自分で調べてみて下さい。
            
            それから気になるのですが、質問者さんは「出国」と「入国」を混同していませんか？。読んで字のごとく、「出国」は国を出ること、「入国」はその国に入ることです。
            
            ', question_id: 21, user_id: 18},
        {body: '住所の入力であれば住所だけ良いのではないでしょうか。またはわざわざフロアを入れる必要はないのかもしれません。入力するには本当はデスクトップとかノートが良いとは思うのですが。文字数が多い可能性もあるので、順次文字数を減らしてみてはいかがでしょう。
            昨年アゼルバイジャンのバクーに行きました。その際ＰＣで入力して何ら問題はありませんでした。なかなか良いところでした。楽しいご旅行を！', question_id: 22, user_id: 8},
        {body: '到着後、申請用紙に記入するだけでＯＫです

            所要時間１０分位でした', question_id: 22, user_id: 12},
        {body: 'これは行った人じゃないとわからない感覚なのですよ。　よくそこに気付かれましたね。
            　私は去年の一月にフィナンシャルセンターのリッツ・カールトンに滞在したのですが、駅から近いから歩いてホテルまで行けばいいや・・・と思って出かけたのですが、横断歩道と信号は1カ所あったのですが、結果歩道がある場所が少なく、ほぼ歩行移動はしない前提の作りなんだとホテルに到着して痛感しました。
            
            　やはり中東の国、車が主流の社会なのだと思います。　しかも歩いて出かけるとかなんかそんなチープ？な感覚は持ち合わせていないのかもしれないなと思いました。　もちろん一月は気温的には出歩けますが時期にょっては焼け死ぬ？（は大げさか）歩いてふらふら・・・な感覚ではなく　ドバイモールまで歩くと１キロ弱だなと自身も思っていましたが、まず歩いて行く人はいないですよ・・・とラウンジスタッフにふふ・・・と笑われてしまいました。（嫌味ではなく）なので、全てすぐの距離でしたがタクシー利用しました。
            
            　コンビニはあの周辺は見かけませんでした。アップグレードしてラウンジ利用するとそれはそれはアラビアンナイトの世界を楽しめますよ。　私は結果大正解でしたのでディシュタニであればそのレベルを堪能できるのではないでしょうか？
            
            いい旅を。', question_id: 23, user_id: 11},
        {body: '大きな道路に関してほとんど渡れないと思った方が良いと思います。
            ホテルからタクシーで出かける時も直線だと5分もかからない距離でも15分くらいかかったり結構遠回りすることが多かったです。
            遠回りというか、道路が首都高みたいにぐるっとしているので回るしかない感じなんです。
            あまり信号もなく本当高速道路みたいだなぁって思いました。（スピードは100km以上出されます‥）
            タクシー料金は安いので遠回りでも値段はそんなに気にならないです。
            
            コンビニはわかりませんが、ドバイモールのスーパー、ウエイトローズは23時半位まで営業していたような。
            エミレーツモールのカルフールもかなり大きなスーパーでこちらも遅くまでやっていました。
            ドバイモールまで1kmでもタクシーの方が良いと思います。短距離でも嫌がられないと思います。ショッピングのついでにスーパーへ寄るといいのかもしれませんね。
            曜日や時期によっては営業時間も変わるかと思うのでご確認してみて下さい。', question_id: 23, user_id: 20},
        {body: '２０１５年と２０１６年にチュニジアを訪問しました。特に、２０１５年は、バルドー美術館でのテロが起きた１週間後の渡航だったため、周りからも、フライトを予約した旅行会社からも、キャンセルを勧められたのですが、どうしても行かなければならない集まりがあり、意を決して行きました。

            そんなわけで、その集まりの合間にチュニス近郊を回っただけですが、カルタゴ遺跡、シディブサイド、チュニス旧市街は一度は行ってみる価値があると思いました。
            
            私は路線バス、タクシー、電車を使って、カルタゴ遺跡とシディブサイドに行きました。路線バスは、バス停の案内がなく、いつの間にか乗り過ごしてしまうなどハードルが高めですが、電車はオススメです。カルタゴ遺跡は小高い丘の上にあるので、電車の駅からタクシーを拾って行けます。特にぼられることもありませんでした。
            
            シディブサイドは電車の駅のすぐ近くで、特にカフェ・デ・シャバーンからの港と地中海の眺めは絶景というほかありません。青いパラソルの下で、のんびりと冷たいジュースを飲んで、海と空を眺める・・・これ以上の贅沢はないという感じでした。
            
            チュニス市内では、旧市街も必見ではありますが、ハビブ・ブルギバ大通りの歩道に並ぶカフェで、ちょっぴりヨーロッパ気分を味わうのもいいかもしれません。イスラム教国であっても、許可されたレストランではアルコール提供可なので、そういう店を探して飲みに行くのも夜の楽しみでした。
            
            書いているとまた行きたくなりました。早く行ける日が来るといいですね。
            
            ', question_id: 24, user_id: 3},
        {body: '目的によって異なると思いますが、地中海側はヨーロッパの中世の感じがあり、カルタゴなども良いと思います。
            しかし、やはり一番はアフリカにしかないものではないでしょうか。
            それは砂漠です。モロッコも有名ですが、クサール・ギレンのオアシス近くにある
            砂漠は奇麗です。そこは４輪のバギーで行けます。またオアシスから３０分位歩くと、映画が撮影された砂漠の所にも行けます。４輪バギーでも行けますので現地交渉でも可能と思います。', question_id: 24, user_id: 2},
        {body: '', question_id: 1, user_id: 1},
        {body: '', question_id: 1, user_id: 1},
    ])
 
Reaction.create(
    [
        {body: 'ご回答ありがとうございます。8月はキャンセルしました。年末年始のフライトは残してますが、安心してなんの気兼ねなくなんて海外旅行はずっとないようか気がします。 ワクチンが必須ですね。毎年インフルエンザワクチンのようにコロナワクチンも接種が当分続くんでしょうね。 私達はコロナワクチン接種ができて、抗体ができて、PCR陰性証明書をとる、この2点はクリアできそうですが、なんせ、14日間の自宅待機が解除されない限りは行けません。 航空券、ホテル、レンタカーを変更の繰り返しで、行ける日を願って待ちます。', user_id: 4, answer_id: 18},
        {body: '私の意見が参考になり幸いでございます', user_id: 1, answer_id: 18},
        {body: 'ご回答ありがとうございます。我が家は旅行期間が長くても仕事で5泊7日しかとれないので、このコロナ以前の何もなかった時でも14日間の旅行は無理でした。なので、ワクチン次第、変異種のこれからの状況、色々確認しながら、 行ける時を待ちます。', user_id: 4, answer_id: 19},
        {body: '情報ありがとうございます。早速電話で予約しました。1人200ドル。高い(泣)', user_id: 8, answer_id: 3},
        {body: 'たくさんの情報ありがとうございます。日系の倉岡クリニックが見つかりました。予約済み。家はカンザス州で、車でダラスまで行きそこで検査予定です。陰性になりますように。。。教えていただいた最新情報を常にチェックしたいと思います。感謝。', user_id: 8, answer_id: 4},
        {body: 'お答えいただきありがとうございます。詳細に書いてくださりとても参考になります。', user_id: 12, answer_id: 5},
        {body: 'ご回答ありがとうざいます。現地の人と交渉してみたいと思います。色々参考にさせていただきます^^', user_id: 3, answer_id: 6},
        {body: 'こんばんは。

            ご回答いただき、誠にありがとうございます！
            
            山ちゃん。さまも、お乗り遅れされそうになったごとがあったのですね。
            間に合うことができたようで何よりです(*^-^*)
            やはり一度経験されていらっしゃるとより強く、時間には余裕をもって、という気持ちを持つことができますよね。
            私も次回からは入念に計画を立てようと思い直しております…。
            
            今回は致し方なしとして、みなさまからのアドバイスをもとになんとか間に合わせてみせます…！
            帰国した際、もしくは渡航中に悔いなく楽しんでいるぞ！というような旅行記を書くことができたらと思っております。

            ありがとうございました！', user_id: 10, answer_id: 12},
        {body: '細やかなアドバイスを頂きありがとうございます！
            無事に飛び立ちましたが、係の方が手馴れた穏やかな方だったので、おそらく26kgほどでしたが、あっけなく流れてゆきました(><)機内持ち込み荷物は計量自体がありませんでしたが、重い場合トランジットや空港内の移動時が大変ですね^^;
            やはり明らかに超過していると分かる量を持っていたり、極端に目立つ点がある場合には指摘されるのかも知れません。
            本当にこればかりは係員次第・運次第という感じもしました。
            直前技は賭けですが、ありかも知れませんね！', user_id: 2, answer_id: 16},
        {body: 'なるほど、そうなのですね！国内線が入り、そこが共同運行なので、当日カウンターでチェックインになり券面が見られないのですが、予約記録の隅には25kgとあるので最安の方かもしれません。
            とりあえずそのまま持っていき、駄目なら衣類を移動する形で行ってみようと思います。心配症でなかなか減らせず、現地で取り越し苦労となりそうです^^;
            回答頂けて心強くなりました。ありがとうございました', user_id: 2, answer_id: 17},
        {body: '貴重な情報ありがとうございます。
            参考にさせて頂きたいと思います。', user_id: 6, answer_id: 18},
        {body: '返金可能なチケットでした。但し75%です。
            飛ぶ前にキャンセルしました。
            ペルーの国境封鎖は3/18。購入したチケットは3/23だったので欠航のはずです。
            キャンセルは3/3です。
            キャンセルする前に、コロナの影響で旅行自体を取り止める場合、返金は可能かを問い合わせてから、キャンセルしました。75%可能とのこと。
            最後に連絡がとれたメールでも75%返金可能、とのことでした。
            
            結局スペイン語ができる方を探しました。
            電話で直接聞いてもらおうと思います。
            決して何がなんでも返金しろ、裁判するぞと言っている訳ではなく、
            返金します→フェードアウトではもやもやが残るので
            最終的な確認をしてもらおうと思っています。
            いろいろとアドバイスありがとうございました', user_id: 6, answer_id: 19},
        {body: 'ご回答ありがとうございます。
            大変参考になりました。', user_id: 6, answer_id: 20},
        {body: 'ありがとうございました！', user_id: 9, answer_id: 26},
        {body: '詳しくありがとうございました', user_id: 9, answer_id: 27},
        {body: '早速のご回答ありがとうございます！！

            旅行自体を諦めるべきか悩んでいたので、オードリーさんからの回答を読んで本当に安心しました。
            大人と全く同じものは食べられない時期ですが、食べられるメニューもありますし、大人用でもグルテンフリーメニューのあるお店が沢山あるようなら何とかなりそうだと希望が見えました。
            
            ゆっくり楽しんできたいと思います＾＾', user_id: 20, answer_id: 35},
        {body: 'お返事くださりありがとうございます。
            やはりイングランド銀行へいかなきゃダメみたいですね。
            頑張って行ってみようと思います。
            貴重な情報をありがとうございます！', user_id: 15, answer_id: 38},
        {body: 'お返事いただきありがとうございます。
            ￡1コインも変わっているのですね。口座がないとコインは無理なんですね。
            貴重な情報をありがとうございます。bank of England行ってみようと思います。', user_id: 15, answer_id: 39},
        {body: '', user_id: 3, answer_id: 7},
        {body: '', user_id: 3, answer_id: 7},
        {body: '', user_id: 3, answer_id: 7},
        {body: '', user_id: 3, answer_id: 7},
        {body: '', user_id: 3, answer_id: 7},
        {body: '', user_id: 3, answer_id: 7},

    ])

Evaluation.create(
    [
        {user_id: 1,question_id: 1},{user_id: 2,question_id: 2},{user_id:3 ,question_id: 3},{user_id: 4,question_id: 4},
        {user_id: 5,question_id: 4},{user_id: 6,question_id: 5},{user_id: 7,question_id: 6},{user_id: 8,question_id: 7},
        {user_id: 9,question_id: 8},{user_id: 10,question_id: 9},{user_id: 11,question_id: 10},{user_id: 12,question_id: 11},
        {user_id: 1,question_id: 12},{user_id: 2,question_id: 12},{user_id: 3,question_id: 14},{user_id: 4,question_id: 15},
        {user_id: 5,question_id: 1},{user_id: 6,question_id: 2},{user_id: 7,question_id: 3},{user_id: 8,question_id: 4},
        {user_id: 13,question_id: 16},{user_id: 14,question_id: 17},{user_id: 15,question_id: 18},{user_id: 16,question_id: 19},
        {user_id: 17,question_id: 20},{user_id: 18,question_id: 21},{user_id: 19,question_id: 22},{user_id: 20,question_id: 23},
        {user_id: 14,question_id: 24},{user_id: 15,question_id: 18},{user_id: 16,question_id: 18},{user_id: 17,question_id: 20},
        {user_id: 18,question_id: 23},{user_id: 19,question_id: 23},{user_id: 20,question_id: 8},{user_id: 21,question_id: 17},
    ]
)

Good.create(
    [
        {user_id: 1,answer_id: 1},{user_id: 1,answer_id: 2},{user_id: 2,answer_id: 3},{user_id: 2,answer_id: 4},
        {user_id: 3,answer_id: 5},{user_id: 3,answer_id: 6},{user_id: 4,answer_id: 7},{user_id: 4,answer_id: 8},
        {user_id: 5,answer_id: 9},{user_id: 6,answer_id: 10},{user_id: 7,answer_id: 11},{user_id: 8,answer_id: 12},
        {user_id: 9,answer_id: 13},{user_id: 10,answer_id: 14},{user_id: 11,answer_id: 15},{user_id: 12,answer_id: 16},
        {user_id: 5,answer_id: 1},{user_id: 6,answer_id: 14},{user_id: 7,answer_id: 19},{user_id: 8,answer_id: 25},
        {user_id: 9,answer_id: 17},{user_id: 10,answer_id: 18},{user_id: 11,answer_id: 19},{user_id: 12,answer_id: 20},
        {user_id: 6,answer_id: 15},{user_id: 13,answer_id: 21},{user_id: 14,answer_id: 22},{user_id: 15,answer_id: 23},
        {user_id: 16,answer_id: 24},{user_id: 17,answer_id: 25},{user_id: 18,answer_id: 26},{user_id: 19,answer_id: 27},
        {user_id: 20,answer_id: 28},{user_id: 13,answer_id: 29},{user_id: 14,answer_id: 30},{user_id: 15,answer_id: 31},
        {user_id: 16,answer_id: 32},{user_id: 17,answer_id: 33},{user_id: 18,answer_id: 34},{user_id: 19,answer_id: 35},
        {user_id: 20,answer_id: 36},{user_id: 5,answer_id: 37},{user_id: 14,answer_id: 38},{user_id: 19,answer_id: 39},
        {user_id: 13,answer_id: 40},{user_id: 5,answer_id: 41},{user_id: 7,answer_id: 42},{user_id: 10,answer_id: 43},
        {user_id: 2,answer_id: 44},{user_id: 8,answer_id: 45},{user_id: 9,answer_id: 46},{user_id: 19,answer_id: 26},
        
    ]
)



 #質問にタグをつける
# questions = Question.all
# questions.each do |q|
#     q.tag = rand(1..11)
# end

# activeadmin(管理画面)に入るためのユーザーです。ターミナルで「rails g active_admin:install」を実行後作成されます。
AdminUser.create!(email: 'admin@gmail.com', password: '11111111', password_confirmation: '11111111') if Rails.env.development?