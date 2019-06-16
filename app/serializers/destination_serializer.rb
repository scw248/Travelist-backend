class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :votes, :price, :description, :city, :state, :country, :image
  # has_many :categories, serializer: CategorySerializer

  attribute :categories do |destination|
    destination.categories.map do |cat|
      {
        name: cat.name
      }
    end
  end
end
