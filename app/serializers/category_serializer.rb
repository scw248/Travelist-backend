class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :destinations, serializer: DestinationSerializer
end
