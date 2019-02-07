class CreateMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :makers do |t|
      t.string :name
      t.text :address
      t.text :url_address
      t.integer :prefecture_id

      t.timestamps
    end
  end
end
