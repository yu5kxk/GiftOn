class Maker < ApplicationRecord
	has_many :items, dependent: :destroy
end
