class AddThanksCountToPosts < ActiveRecord::Migration[5.2]
	class MigrationUser < ApplicationRecord
    	self.table_name = :posts
  	end

  	 def up
    	_up
 	rescue => e
    	_down
    	raise e
  	end

  	def down
    	_down
  	end

  	private

  	def _up
  		MigrationUser.reset_column_information

    	add_column :posts, :thanks_count, :integer, null: false, default: 0 unless column_exists? :posts, :thanks_count
  	end

  	def _down
  		MigrationUser.reset_column_information

    	remove_column :posts, :thanks_count if column_exists? :posts, :thanks_count
  	end
end
