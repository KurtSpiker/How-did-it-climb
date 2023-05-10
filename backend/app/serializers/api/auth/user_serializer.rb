module Api
  class Auth::UserSerializer < ActiveModel::Serializer
    attributes :id, :email, :created_at, :token

    def token
      instance_options[:token]
    end
  end
end
