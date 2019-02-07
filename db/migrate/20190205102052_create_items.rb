class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :maker_id
      t.integer :price
      t.integer :keeping_quality
      t.integer :l_category_id
      t.integer :s_category_id

      t.timestamps
    end
  end
end
