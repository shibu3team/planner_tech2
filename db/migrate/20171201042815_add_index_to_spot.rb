class AddIndexToSpot < ActiveRecord::Migration[5.1]
  def change
    add_index :spots, [ :name, :address ], name: "ui_spots_01", unique: true
  end
end
