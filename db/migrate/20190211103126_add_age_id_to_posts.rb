class AddAgeIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :age_id, :integer
  end
end
