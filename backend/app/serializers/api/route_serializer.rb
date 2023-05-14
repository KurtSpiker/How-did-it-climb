module Api
  class RouteSerializer < ActiveModel::Serializer
    attributes :description, :grade, :colour, :created_at, :section_number

    belongs_to :gym, serializer: GymSerializer
  end
end
