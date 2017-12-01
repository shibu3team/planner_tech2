class PlanTag < ApplicationRecord
  validates :plan_id, presence: true
  validates :tag_id, presence: true

  belongs_to :tag
  belongs_to :plan
end
