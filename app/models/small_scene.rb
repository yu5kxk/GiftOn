class SmallScene < ApplicationRecord
	has_many :posts
	belongs_to :large_scene

	validates :number, presence: true
	validates :name, presence: true
end
