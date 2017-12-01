class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string  :name,        null: false, limit: 64
      t.text    :description, null: false, limit: 1023
      t.decimal :time,        null: false
      t.integer :price,       null: false
      t.integer :timezone,    null: false
      t.integer :user_id,     null: false

      t.timestamps
    end
    add_index :plans, :name
    end
end
