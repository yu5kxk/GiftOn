class AddSmallCategoryIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :small_category_id, :integer
  end
end
