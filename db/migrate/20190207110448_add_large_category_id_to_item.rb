class AddLargeCategoryIdToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :large_category_id, :integer
  end
end
