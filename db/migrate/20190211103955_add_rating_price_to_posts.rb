class AddRatingPriceToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :rating_price, :integer
  end
end
