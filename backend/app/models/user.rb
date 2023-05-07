class User < ApplicationRecord
  has_many :climbs

  # TODO should have a DB constraint making username unique
  validates :username, presence: true, uniqueness: true
end
