class SmallCategory < ApplicationRecord
	has_many :posts
	belongs_to :large_category

	validates :number, presence: true
	validates :name, presence: true
end
