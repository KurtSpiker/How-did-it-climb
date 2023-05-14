module Api
  class GymSerializer < ActiveModel::Serializer
    attributes :name, :number_of_sections

    has_many :routes, serializer: RouteSerializer
  end
end
