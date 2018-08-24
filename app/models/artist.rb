class Artist < ApplicationRecord
  has_secure_password
  has_many :events
  has_many :venues, through: :events
  has_many :confirmed_events
  has_many :comments, through: :confirmed_events

end
