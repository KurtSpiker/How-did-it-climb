class Route < ApplicationRecord
  belongs_to :gym

  has_many :climbs

  validates :grade, :colour, :gym, presence: true
end
