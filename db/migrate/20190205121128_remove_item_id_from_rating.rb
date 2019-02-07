class RemoveItemIdFromRating < ActiveRecord::Migration[5.2]
  def change
    remove_column :ratings, :item_id, :integer
  end
end
