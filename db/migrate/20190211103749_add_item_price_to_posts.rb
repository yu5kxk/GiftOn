class AddItemPriceToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :item_price, :integer
  end
end
