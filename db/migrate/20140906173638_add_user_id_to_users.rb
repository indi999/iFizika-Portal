class AddUserIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
  end

  def self.up
    add_column :users, :avatar, :string
  end
  def self.down
    remove_column :users, :avatar
  end
end
