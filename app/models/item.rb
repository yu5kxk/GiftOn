class Item < ApplicationRecord
	belongs_to :maker
	belongs_to :small_category

	enum keeping_quality: { oneday:0, threedays:1, oneweek:2, twoweeks:3, more:4 }

end
