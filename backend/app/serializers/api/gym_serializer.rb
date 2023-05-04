module Api
  class GymSerializer < ActiveModel::Serializer
    attributes :name

    has_many :routes, serializer: RouteSerializer
  end
end
