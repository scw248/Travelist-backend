class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :votes, :price, :description, :city, :state, :country, :image, :user_id, :destination_id
  belongs_to :user, serializer: UserSerializer
  belongs_to :user, serializer: DestinationSerializer
end