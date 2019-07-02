class PinSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :votes, :price, :description, :city, :state, :country, :image, :user_id, :destination_id
end