class LargeCategory < ApplicationRecord
	has_many :small_categories, dependent: :destroy

	validates :number, presence: true
	validates :name, presence: true
end
