class ChangeIndexSpot < ActiveRecord::Migration[5.1]
  def change
    remove_index :spots, :address
  end
end
