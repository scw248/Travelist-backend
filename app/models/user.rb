class User < ApplicationRecord
  has_secure_password

  has_many :destinations
  has_many :pins
  has_many :pinned_destinations, through: :pins, source: :destination
  validates :email, presence: true
  validates :email, uniqueness: true
end
