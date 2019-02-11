class AddRatingFeelingToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :rating_feeling, :integer
  end
end
