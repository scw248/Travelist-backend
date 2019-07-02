class Destination < ApplicationRecord
  belongs_to :user
  has_many :pinned_destinations
  has_many :categories
end
