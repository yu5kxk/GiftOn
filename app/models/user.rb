class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :thanks, dependent: :destroy
  has_many :thanked_posts, through: :thanks, source: :post
  def thanked_by?(post)
    thanks.where(post_id: post.id).exists?
  end
  has_many :clips, dependent: :destroy
  has_many :cliped_posts, through: :clips, source: :post
  def cliped_by?(post)
  	clips.where(post_id: post.id).exists?
  end
  attachment :image

  validates :name, presence: true
  validates :birth, presence: true
  validates :email, presence: true
  validates :introduction, presence: true, length: { maximum: 150 }
end
