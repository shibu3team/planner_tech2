class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text    :comment,   null: false, default:" ",  limit: 280
      t.decimal :valuation, null: false, default: 3.0, scale: 1, precision: 1
      t.integer :plan_id,   null: false
      t.integer :user_id,   null: false

      t.timestamps
    end
    add_index :reviews, [ :plan_id, :user_id ], name: "ui_reviews_01", unique: true
    add_index :reviews, [ :plan_id, :created_at ], name: "idx_reviews_01"
  end
end
