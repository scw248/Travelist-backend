class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :votes, :price, :description, :city, :state, :country, :image, :user_id
  has_many :categories, serializer: CategorySerializer

  attribute :categories do |destination|
    destination.categories.map do |category|
      {
        name: category.name
      }
    end
  end
end
