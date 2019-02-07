class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets do |t|
      t.integer :age_id
      t.integer :gender_id

      t.timestamps
    end
  end
end
