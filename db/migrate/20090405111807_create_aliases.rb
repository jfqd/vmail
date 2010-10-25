class CreateAliases < ActiveRecord::Migration
  def self.up
    create_table :aliases do |t|
      t.string :address
      t.string :goto
      t.timestamps
    end
    
    add_index :aliases, :address
  end

  def self.down
    drop_table :aliases
  end
end
