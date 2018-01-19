class ChangeColumnToPlans2 < ActiveRecord::Migration[5.1]
  def up
    change_column :plans, :time, :integer, null: false
  end

  # 変更前の状態
  def down
    change_column :plans, :time, :decimal, null: false
  end
end
