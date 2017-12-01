class Spot < ApplicationRecord
  validates :name, presence:true, length:{ in: 1..32 }
  validates :address, presence: true, uniqueness: true, length:{ maximum: 140 }
  validates :time, length:{ maximum: 10 }
  validates :price, length:{ maximum: 99999 }


  has_many :plan_spots, :dependent => :destroy
  has_many :plans, through :plan_spots
end
