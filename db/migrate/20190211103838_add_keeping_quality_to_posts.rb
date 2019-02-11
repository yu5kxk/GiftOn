class AddKeepingQualityToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :keeping_quality, :integer
  end
end
