class AddMakerNameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :maker_name, :string
  end
end
