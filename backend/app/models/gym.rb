class Gym < ApplicationRecord
    has_many :routes

    validates :name, presence: true, uniqueness: true
    validates :number_of_sections, presence: true, numericality: { greater_than: 0 }
end
