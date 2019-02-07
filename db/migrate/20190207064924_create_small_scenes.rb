class CreateSmallScenes < ActiveRecord::Migration[5.2]
  def change
    create_table :small_scenes do |t|
      t.integer :number
      t.string :name
      t.integer :large_scene_id

      t.timestamps
    end
  end
end
