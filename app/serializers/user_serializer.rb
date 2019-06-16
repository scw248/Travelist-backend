class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email
  has_many :destinations, serializer: DestinationSerializer
end
