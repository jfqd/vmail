class AddUserIdToAlias < ActiveRecord::Migration
  def self.up
    add_column :aliases, :user_id,  :integer
  end

  def self.down
    remove_column :aliases,   :user_id
  end
end
