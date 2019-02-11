class AddRatingMatchingToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :rating_matching, :integer
  end
end
