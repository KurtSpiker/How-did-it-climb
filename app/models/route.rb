class Route < ApplicationRecord
    attr_accessor :description

    belongs_to :gym

    validates :grade, :colour, :gym, presence: true
    

    
end
