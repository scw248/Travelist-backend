class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :password
  has_many :destinations, serializer: DestinationSerializer
  has_many :pins, serializer: PinSerializer
end
