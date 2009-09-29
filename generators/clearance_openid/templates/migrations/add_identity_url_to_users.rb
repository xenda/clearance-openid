class AddIdentityUrlToUsers < ActiveRecord::Migration

  def self.up
    add_column :users, :identity_url, :string
    add_index :users, :identity_url, :unique => true
  end
 
  def self.down
    remove_column :users, :identity_url
  end

end
