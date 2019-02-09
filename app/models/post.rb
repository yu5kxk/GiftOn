class Post < ApplicationRecord
	has_many :post_images, dependent: :destroy
	accepts_attachments_for :post_images, attachment: :image

	belongs_to :user
	belongs_to :target

	enum stance_id: {presented: 0,got: 1}
	enum gender_id: {male: 0,female: 1}
end
