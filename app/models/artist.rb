class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Artist < ApplicationRecord
  has_many :events
  has_many :venues, through: :events

  def artists_search
    if params[:artist_search]
      @artists = Artist.select {|artist| artist.name.include?(params[:artist_search])}
    else
      @artists = Artist.all
    end
  end
end
