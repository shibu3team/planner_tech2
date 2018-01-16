class ChangeColumnToSpot3 < ActiveRecord::Migration[5.1]
  # 変更内容
 def up
   change_column :spots, :spot_time, :integer, null: false

 end

 # 変更前の状態
 def down
   change_column :spots, :spot_time, :decimal, null: false
 end
end
