class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :password
  has_many :destinations, serializer: DestinationSerializer
  has_many :pinned_destinations, through: :pins, source: :destination, serializer: DestinationSerializer
end
