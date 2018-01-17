class ChangeColumnToPlans < ActiveRecord::Migration[5.1]
  def up
    change_column :plans, :time_category, :integer, null: false
  end

  # 変更前の状態
  def down
    change_column :plans, :timezone, :decimal, null: false
  end
end
