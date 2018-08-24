class Event < ApplicationRecord
  belongs_to :artist, required: false
  belongs_to :venue, required: false
  has_many :confirmed_events
  has_many :comments, through: :confirmed_events
end
