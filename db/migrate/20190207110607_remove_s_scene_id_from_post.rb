class RemoveSSceneIdFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :s_scene_id, :integer
  end
end
