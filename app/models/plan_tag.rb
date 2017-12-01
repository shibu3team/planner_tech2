class PlanTag < ApplicationRecord
  validates :plan_id, presence: true, uniqueness: { scope: :tag_id }
  validates :tag_id, presence: true, uniqueness: { scope: :plan_id }

  belongs_to :tag
  belongs_to :plan
end
