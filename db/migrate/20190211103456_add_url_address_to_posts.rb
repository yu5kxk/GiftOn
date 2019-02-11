class AddUrlAddressToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :url_address, :text
  end
end
