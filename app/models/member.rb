class Member < ApplicationRecord
  has_many :member_positions, dependent: :destroy
  has_many :positions, through: :member_positions
  accepts_nested_attributes_for :member_positions, allow_destroy: true
end
