class Position < ApplicationRecord
  has_many :members, through: :member_position
  has_many :member_positions, dependent: :destroy
end
