class Route < ApplicationRecord
  belongs_to :gym

  validates :grade, :colour, :gym, presence: true
end
