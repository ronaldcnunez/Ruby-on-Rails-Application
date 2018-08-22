class Venue < ApplicationRecord
  has_secure_password
  has_many :events
  has_many :artists, through: :events
  has_many :confirmed_events
end
