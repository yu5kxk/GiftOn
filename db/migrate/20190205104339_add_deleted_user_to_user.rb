class AddDeletedUserToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :deleted_user, :integer
  end
end
