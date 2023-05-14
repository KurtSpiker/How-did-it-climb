class Route < ApplicationRecord
  belongs_to :gym

  has_many :climbs

  validates :grade, :colour, :gym, presence: true
  validates :section_number, presence: true, numericality: { greater_than: 0 }
  validate :section_number_in_gym

  def section_number_in_gym
    errors.add(:section_number, "#{section_number} is not a section in the gym") if section_number && section_number > gym.number_of_sections
  end
end
