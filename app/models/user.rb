class User < ApplicationRecord
  has_secure_password

  has_many :destinations
  has_many :pinned_destinations, through: :destinations
  validates :email, presence: true
  validates :email, uniqueness: true
end
