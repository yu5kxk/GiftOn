class Post < ApplicationRecord
	has_many :post_images, dependent: :destroy
    has_many :thanks, dependent: :destroy
    has_many :thankde_posts, through: :thanks, source: :user
    def thanked_by?(user)
        thanks.where(user_id: user.id).exists?
    end
    has_many :clips, dependent: :destroy
    has_many :cliped_posts, through: :clips, source: :user
    def cliped_by?(user)
        clips.where(user_id: user.id).exists?
    end

	belongs_to :user
	belongs_to :small_category
    belongs_to :small_scene

	enum stance_id: {presented: 1,got: 2}
	enum gender_id: {male: 1,female: 2}
    enum age_id: {infant_lower: 1,infant_upper: 2,elementary_school_lower: 3,elementary_school_upper: 4,
        junior_high_school: 5,high_school: 6,university: 7,twenty: 8,thirty: 9,forty: 10,fifty: 11,
        sixty: 12,seventy: 13,eighty: 14,mote_age: 15}
	enum prefecture_id: {
    全国:0,北海道:1,東北地方青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    関東地方:8, 茨城県:9,栃木県:10,群馬県:11,埼玉県:12,千葉県:13,東京都:14,神奈川県:15,
    中部地方:16,新潟県:17,富山県:18,石川県:19,福井県:20,山梨県:21,長野県:22,岐阜県:23,静岡県:24,愛知県:25,
    関西地方:26,三重県:27,滋賀県:28,京都府:29,大阪府:30,兵庫県:31,奈良県:32,和歌山県:33,
    中国地方:34,鳥取県:35,島根県:36,岡山県:37,広島県:38,山口県:39,
    四国地方:40,徳島県:41,香川県:42,愛媛県:43,高知県:44,
    九州地方:45,福岡県:46,佐賀県:47,長崎県:48,熊本県:49,大分県:50,宮崎県:51,鹿児島県:52,
    沖縄県:53
  }
  enum keeping_quality: {oneday: 1,threedays: 2,oneweek: 3,twoweeks: 4,more: 5}
end
