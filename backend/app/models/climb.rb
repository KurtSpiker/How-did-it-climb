class Climb < ApplicationRecord
  belongs_to :user
  belongs_to :route

  validates :user, presence: true
  validates :route, presence: true
end
