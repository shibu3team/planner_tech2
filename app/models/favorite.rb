class Favorite < ApplicationRecord
  validates :user_id, presence: true, uniqueness: { scope: :plan_id }
  validates :plan_id, presence: true, uniqueness: { scope: :user_id }


  belongs_to :user
  belongs_to :plan
end
