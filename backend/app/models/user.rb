class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, #:rememberable, :recoverable
         :validatable, :jwt_authenticatable, jwt_revocation_strategy: self
  has_many :climbs

  # TODO should have a DB constraint making username unique
  # validates :username, uniqueness: true
end
