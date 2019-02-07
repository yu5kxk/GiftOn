class SmallCategory < ApplicationRecord
	has_many :posts
	belongs_to :large_category
end
