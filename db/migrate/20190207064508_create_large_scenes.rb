class CreateLargeScenes < ActiveRecord::Migration[5.2]
  def change
    create_table :large_scenes do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
