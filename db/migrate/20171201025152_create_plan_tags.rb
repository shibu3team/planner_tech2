class CreatePlanTags < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_tags do |t|
      t.integer :plan_id, null: false
      t.integer :tag_id,  null: false

      t.timestamps
    end
    add_index :plan_tags, [ :plan_id, :tag_id ], name: "ui_plan_tags_01", unique: true
  end
end
