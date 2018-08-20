class Artist < ApplicationRecord
  has_many :events
  has_many :venues, through: :events
end
