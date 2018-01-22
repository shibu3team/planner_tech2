class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name,     null: false
      t.string :email,    null: false
      t.string :password_digest, null: false
      t.text   :profile

      t.timestamps
    end
    add_index :users, :name,  name: "uq_users_01", unique: true
    add_index :users, :email, name: "uq_users_02", unique: true
  end

end
