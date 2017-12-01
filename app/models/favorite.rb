class Favorite < ApplicationRecord
  validates :user_id, presence: true
  validates :plan_id, presence: true

  belongs_to :user
  belongs_to :plan
end
