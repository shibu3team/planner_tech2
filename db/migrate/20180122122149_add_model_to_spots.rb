class AddModelToSpots < ActiveRecord::Migration[5.1]
  def change
    add_column :spots, :plan_id, :integer
  end
end
