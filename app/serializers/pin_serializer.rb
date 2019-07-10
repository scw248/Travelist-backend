class PinSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :destination_id
end