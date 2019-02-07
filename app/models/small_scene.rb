class SmallScene < ApplicationRecord
	has_many :posts
	belongs_to :large_scene
end
