class AddPostRefToPostImage < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :post, :string
    add_column :post_images, :references, :string
  end
end
