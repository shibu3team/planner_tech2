class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string  :name,          null: false
      t.text    :description,   null: false
      t.decimal :time,          null: false
      t.integer :price,         null: false
      t.integer :time_category, null: false
      t.integer :user_id,       null: false

      t.timestamps
    end
    add_index :plans, :user_id, name: "idx_plans_01"
    end
end
