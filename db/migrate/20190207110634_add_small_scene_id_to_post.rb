class AddSmallSceneIdToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :small_scene_id, :integer
  end
end
