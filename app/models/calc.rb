class Calc < ApplicationRecord
  validates :divider, :dividend, presence: true
end
