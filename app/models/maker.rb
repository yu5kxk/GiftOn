class Maker < ApplicationRecord
	has_many :items, dependent: :destroy

	enum prefecture_id: {
    北海道地方:0,北海道:1,
    東北地方:2,青森県:3,岩手県:4,宮城県:5,秋田県:6,山形県:7,福島県:8,
    関東地方:9,茨城県:10,栃木県:11,群馬県:12,埼玉県:13,千葉県:14,東京都:15,神奈川県:16,
    中部地方:17,新潟県:18,富山県:19,石川県:20,福井県:21,山梨県:22,長野県:23,岐阜県:24,静岡県:25,愛知県:26,
    近畿地方:27,三重県:28,滋賀県:29,京都府:30,大阪府:31,兵庫県:32,奈良県:33,和歌山県:34,
    中国地方:35,鳥取県:36,島根県:37,岡山県:38,広島県:39,山口県:40,
    四国地方:41,徳島県:42,香川県:43,愛媛県:44,高知県:45,
    九州地方:46,福岡県:47,佐賀県:48,長崎県:49,熊本県:50,大分県:51,宮崎県:52,鹿児島県:53,沖縄県:54
  	}
end
