class RemoveLCategoryIdFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :l_category_id, :integer
  end
end
