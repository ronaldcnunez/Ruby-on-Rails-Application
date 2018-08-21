Artist.delete_all
Event.delete_all
Venue.delete_all

100.times {Artist.create(name: Faker::Music.band, email: Faker::Internet.email)}
100.times {Venue.create(name: Faker::Book.title, email: Faker::Internet.email, location: Faker::Address.full_address)}
100.times {Event.create(artist_id: rand(100), venue_id: rand(100), date: Faker::Date.forward(365))}
