class Spot < ApplicationRecord
  validates :name, presence:true, length:{ in: 1..32 }, uniqueness: { scope: :address }
  validates :address, presence: true, uniqueness: true, length:{ maximum: 140 }, uniqueness: { scope: :name }
  validates :spot_time, length:{ maximum: 10 }
  validates :price, length:{ maximum: 99999 }
  validates :plan_id, presence:true
  # has_many :plan_spots, :dependent => :destroy
  # has_many :plans, through :plan_spots
end
