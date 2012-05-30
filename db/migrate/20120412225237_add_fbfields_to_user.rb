class AddFbfieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :foto, :string
    add_column :users, :url, :string
    add_column :users, :gender, :string
  end
end
