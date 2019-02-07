class LargeScene < ApplicationRecord
	has_many :small_scenes, dependent: :destroy
end
