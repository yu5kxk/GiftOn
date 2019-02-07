class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :item_id
      t.integer :feeling
      t.integer :looks
      t.integer :price
      t.integer :scene_matching

      t.timestamps
    end
  end
end
