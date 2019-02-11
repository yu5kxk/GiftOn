class AddItemNameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :item_name, :string
  end
end
