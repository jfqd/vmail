class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :address
      t.string :password
      t.string :maildir
      t.timestamps
    end
    
    add_index :users, :address
  end

  def self.down
    drop_table :users
  end
end
