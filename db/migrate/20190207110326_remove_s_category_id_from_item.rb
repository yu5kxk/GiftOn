class RemoveSCategoryIdFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :s_category_id, :integer
  end
end
