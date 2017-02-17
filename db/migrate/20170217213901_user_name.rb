class UserName < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :user_name
    add_column :users, :user_name, :string, :default => "No username"
  end
end
