class CreatePlanSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_spots do |t|
      t.integer :plan_id, null: false
      t.integer :spot_id, null: false

      t.timestamps
    end
    add_index :plan_spots, [ :plan_id, :spot_id ], name: "ui_plan_spots_01", unique: true
  end
end
