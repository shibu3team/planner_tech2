class ChangeColumnToUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :password
    remove_column :users, :profile
    add_column :users, :password_digest, :string
  end
end
