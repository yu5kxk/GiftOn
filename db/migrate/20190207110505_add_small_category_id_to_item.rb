class AddSmallCategoryIdToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :small_category_id, :integer
  end
end
