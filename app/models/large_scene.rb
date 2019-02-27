class LargeScene < ApplicationRecord
	has_many :small_scenes, dependent: :destroy

	validates :number, presence: true
	validates :name, presence: true
end
