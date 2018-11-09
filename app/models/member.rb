class Member < ApplicationRecord
  has_many :positions, through: :member_position
  has_many :member_positions, dependent: :destroy
end
