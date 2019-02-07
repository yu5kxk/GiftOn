class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :stance_id
      t.integer :item_id
      t.integer :target_id
      t.integer :s_scene_id

      t.timestamps
    end
  end
end
