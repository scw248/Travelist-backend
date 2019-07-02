class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :votes, :price, :description, :city, :state, :country, :image, :user_id
  has_many :categories, serializer: CategorySerializer

end
