module Api
  class RouteSerializer < ActiveModel::Serializer
    attributes :description, :grade, :colour, :created_at

    belongs_to :gym, serializer: GymSerializer
  end
end
   