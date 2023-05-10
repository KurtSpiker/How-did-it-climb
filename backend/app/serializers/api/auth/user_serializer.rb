module Api
  class Auth::UserSerializer < ActiveModel::Serializer
    attributes :id, :email, :created_at
  end
end
