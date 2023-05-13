module Api
    class ClimbSerializer < ActiveModel::Serializer
      attributes :comment, :attempts, :topped, :zoned, :created_at
  
      belongs_to :user, serializer: UserSerializer
      belongs_to :route, serializer: RouteSerializer
    end
  end
  