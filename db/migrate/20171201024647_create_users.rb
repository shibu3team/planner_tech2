class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name,     null: false, limit: 25
      t.string :email,    null: false
      t.string :password, null: false, limit: 20
      t.text   :profile,  null: false, limit: 140, default: " "

      t.timestamps
    end
    add_index :users, :name,  name: "uq_users_01", unique: true
    add_index :users, :email, name: "uq_users_02", unique: true
  end
  
end
