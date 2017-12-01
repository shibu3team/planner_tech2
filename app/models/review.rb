class Review < ApplicationRecord
  validates :comment, presence: true, length: { maximum: 280 }
  validates :valuation, presence: true, length: { maximum: 10 }
  validates :user_id, presence: true, uniqueness: { scope: :plan_id }
  validates :plan_id, presence: true, uniqueness: { scope: :user_id }

  belongs_to :user
  belongs_to :plan
end
