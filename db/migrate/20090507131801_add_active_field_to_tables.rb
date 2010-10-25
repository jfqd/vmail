class AddActiveFieldToTables < ActiveRecord::Migration
  def self.up
    add_column :domains, :active,  :boolean, :default => false
    add_column :aliases, :active,  :boolean, :default => false
  end

  def self.down
    remove_column :domains,   :active
    remove_column :aliases,   :active
  end
end
