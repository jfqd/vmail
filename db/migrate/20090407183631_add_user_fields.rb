class AddUserFields < ActiveRecord::Migration
  def self.up
    add_column    :users,   :realm,   :string,  :default => ""
    add_column    :users,   :active,  :boolean, :default => true
  end

  def self.down
    remove_column :users,   :realm
  end
end
