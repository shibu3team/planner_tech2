class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string  :name, null: false
      t.string  :address,   null: false
      t.integer :spot_time, null: false
      t.integer :price,     null: false
      t.integer :plan_id,     null: false
      t.timestamps
    end
    # add_index :spots, [ :name, :address ], name: "ui_spots_01", unique: true
  end
end
