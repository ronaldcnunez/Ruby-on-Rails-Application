class ConfirmedEvent < ApplicationRecord
  belongs_to :event
  delegate :artist, to: :event, allow_nil: true
  delegate :venue, to: :event, allow_nil: true

end
