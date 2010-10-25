class AddRelationFields < ActiveRecord::Migration
  def self.up
    add_column    :aliases, :domain_id, :integer
    add_column    :users,   :domain_id, :integer
  end

  def self.down
    remove_column :aliases, :domain_id
    remove_column :users,   :domain_id
  end
end
