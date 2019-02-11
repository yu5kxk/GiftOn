class AddGenderIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :gender_id, :integer
  end
end
