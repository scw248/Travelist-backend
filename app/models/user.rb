class User < ApplicationRecord
  has_secure_password

  has_many :destinations
  # has_many :destinations, through: :pinned_destinations
  validates :email, presence: true
  validates :email, uniqueness: true
end
