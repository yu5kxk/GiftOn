class Post < ApplicationRecord
	has_many :post_images, dependent: :destroy

  has_many :thanks, dependent: :destroy
  has_many :thanked_posts, through: :thanks, source: :user
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
  belongs_to :age
  
	enum stance_id: {presented: 1,got: 2}
	enum gender_id: {male: 1,female: 2}
	enum prefecture_id: {
    全国:0,北海道:1,東北地方:2,青森県:3,岩手県:4,宮城県:5,秋田県:6,山形県:7,福島県:8,
    関東地方:9, 茨城県:10,栃木県:11,群馬県:12,埼玉県:13,千葉県:14,東京都:15,神奈川県:16,
    中部地方:17,新潟県:18,富山県:19,石川県:20,福井県:21,山梨県:22,長野県:23,岐阜県:24,静岡県:25,愛知県:26,
    関西地方:27,三重県:28,滋賀県:29,京都府:30,大阪府:31,兵庫県:32,奈良県:33,和歌山県:34,
    中国地方:35,鳥取県:36,島根県:37,岡山県:38,広島県:39,山口県:40,
    四国地方:41,徳島県:42,香川県:43,愛媛県:44,高知県:45,
    九州地方:46,福岡県:47,佐賀県:48,長崎県:49,熊本県:50,大分県:51,宮崎県:52,鹿児島県:53,
    沖縄県:54
  }
  enum keeping_quality: {oneday: 1,threedays: 2,oneweek: 3,twoweeks: 4,more: 5}

  validates :stance_id, presence: true
  validates :gender_id, presence: true
  validates :item_name, presence: true, length: { minimum: 1 }
  validates :maker_name, presence: true, length: { minimum: 1 }
  validates :rating_feeling, presence: true
  validates :rating_looks, presence: true
  validates :rating_price, presence: true
  validates :rating_matching, presence: true
  validates :review, presence: true, length: { minimum: 1 }
end
