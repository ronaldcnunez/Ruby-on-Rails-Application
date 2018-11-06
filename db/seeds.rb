Artist.delete_all
Event.delete_all
Venue.delete_all


#TEST ACCOUNTS
Artist.create(
  name:"Artist Tester",
  email: "test@gmail.com",
  description:Faker::ChuckNorris.fact,
  genre: "TEST",
  img_url: "https://www.telegraph.co.uk/content/dam/news/2017/06/26/TELEMMGLPICT000088211244_trans_NvBQzQNjv4BqrduRQfIjONMjRT2xVSqTqUSSKLtb6W3JTHO22Hljeu4.jpeg?imwidth=900",
  password: "test1234")

  Venue.create(name: "Venue Tester",
    email: "test1@gmail.com",
    description: Faker::MichaelScott.quote,
    location: "New York, New York",
    img_url: "https://img.huffingtonpost.com/asset/5b7fdeab1900001d035028dc.jpeg?cache=sixpwrbb1s&ops=1910_1000",
    password: "test1234")


# FAKER SEED DATA
  Venue.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::MichaelScott.quote,
    location: Faker::Address.full_address,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Venue.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::MichaelScott.quote,
    location: Faker::Address.full_address,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Venue.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::MichaelScott.quote,
    location: Faker::Address.full_address,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Venue.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::MichaelScott.quote,
    location: Faker::Address.full_address,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Venue.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::MichaelScott.quote,
    location: Faker::Address.full_address,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Venue.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::MichaelScott.quote,
    location: Faker::Address.full_address,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Venue.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::MichaelScott.quote,
    location: Faker::Address.full_address,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Artist.create(
    name:Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::ChuckNorris.fact,
    genre: Faker::Music.genre,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Artist.create(
    name:Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::ChuckNorris.fact,
    genre: Faker::Music.genre,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Artist.create(
    name:Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::ChuckNorris.fact,
    genre: Faker::Music.genre,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Artist.create(
    name:Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::ChuckNorris.fact,
    genre: Faker::Music.genre,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Artist.create(
    name:Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::ChuckNorris.fact,
    genre: Faker::Music.genre,
    img_url: Faker::Avatar.image,
    password: "test1234")

  Artist.create(
    name:Faker::Name.name,
    email: Faker::Internet.email,
    description: Faker::ChuckNorris.fact,
    genre: Faker::Music.genre,
    img_url: Faker::Avatar.image,
    password: "test1234")



Event.create(
  artist_id: 1,
  venue_id: 1,
  description: Faker::ChuckNorris.fact,
  date: Faker::Date.forward(45))

Event.create(
  artist_id: 1,
  venue_id: 2,
  description: Faker::ChuckNorris.fact,
  date: Faker::Date.forward(45))

Event.create(
  artist_id: 1,
  venue_id: 3,
  description: Faker::ChuckNorris.fact,
  date: Faker::Date.forward(45))
