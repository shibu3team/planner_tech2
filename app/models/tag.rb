class Tag < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length:{ in: 2..16 }

  has_many :plan_tags, :dependent => :destroy
  has_many :plan, through :plan_tags
end
