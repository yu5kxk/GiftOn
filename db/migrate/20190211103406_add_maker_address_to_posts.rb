class AddMakerAddressToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :maker_address, :text
  end
end
