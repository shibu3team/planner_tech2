class PlanSpot < ApplicationRecord
  validates :plan_id, presence: true, uniqueness: { scope: :spot_id }
  validates :spot_id, presence: true

  belongs_to :spot
  belongs_to :plan
end
