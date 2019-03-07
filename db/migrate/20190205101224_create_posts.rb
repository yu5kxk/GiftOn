class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :stance_id
      t.integer :item_id
      t.integer :target_id
      t.integer :small_scene_id
      t.text :review
      t.integer :gender_id
      t.string :maker_name
      t.text :maker_address
      t.text :url_address
      t.integer :prefecture_id
      t.integer :small_category_id
      t.string :item_name
      t.integer :item_price
      t.integer :keeping_quality
      t.integer :rating_feeling
      t.integer :rating_looks
      t.integer :rating_price
      t.integer :rating_matching
      t.integer :age_id


      t.timestamps
    end
  end
end
