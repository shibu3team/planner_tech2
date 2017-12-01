class Review < ApplicationRecord
  validates :comment, presence: true, length: { maximum: 280 }
  validates :valuation, presence: true, length: { maximum: 10 }
  validates :user_id, presence: true
  validates :plan_id, presence: true

  belongs_to :user
  belongs_to :plan
end
