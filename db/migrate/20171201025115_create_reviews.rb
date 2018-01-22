class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text    :comment,   null: false
      t.integer :valuation, null: false
      t.integer :plan_id,   null: false
      t.integer :user_id,   null: false

      t.timestamps
    end
    add_index :reviews, [ :plan_id, :user_id ], name: "ui_reviews_01", unique: true
  end
end
