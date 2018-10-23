Artist.delete_all
Event.delete_all
Venue.delete_all


Artist.create(name: "AC/DC", email: "ac/dc@hotmail.com", description: "AC/DC are an Australian rock band, formed in Sydney in 1973 by brothers Malcolm and Angus Young. Their music has been described by music journalists as hard rock, blues rock, and controversially, heavy metal, although the group have called themselves a rock and roll band, nothing more, nothing less.", genre: "Rock and roll",
  img_url: "https://www.rockhall.com/sites/default/files/styles/header_image_portrait/public/acdchero_web.jpg?itok=9mel4cOs", password: "artist" )

Artist.create(name: "Rick Ross", email: "rickross@gmail.com", description: "William Leonard Roberts II (born January 28, 1976), known professionally by his stage name Rick Ross, is an American rapper, entrepreneur and record executive.", genre: "Rap",
    img_url: "http://s3.amazonaws.com/hiphopdx-production/2017/07/Rick-Ross-827x620.jpg", password: "artist" )

Artist.create(name: "U2", email: "u2@gmail.com", description: "U2 are an Irish rock band from Dublin formed in 1976. The group consists of Bono (lead vocals and rhythm guitar), the Edge (lead guitar, keyboards, and backing vocals), Adam Clayton (bass guitar), and Larry Mullen Jr. (drums and percussion). Initially rooted in post-punk, U2's musical style has evolved throughout their career, yet has maintained an anthemic sound built on Bono's expressive vocals and the Edge's effects-based guitar textures. Their lyrics, often embellished with spiritual imagery, focus on personal and sociopolitical themes. Popular for their live performances, the group have staged several ambitious and elaborate tours over their career.", genre: "Rock, Alternative Rock",
    img_url: "http://is-a-cunt.com/wp-content/uploads/2017/12/U2.jpg", password: "artist" )

Artist.create(name: "Yo-Yo Ma", email: "ya_boi_yoyo@gmail.com", description: "Yo-Yo Ma (born October 7, 1955) is a French-born American cellist.[2] Born in Paris, he spent his schooling years in New York City and was a child prodigy, performing from the age of four and a half. He graduated from the Juilliard School and Harvard University and has enjoyed a prolific career as both a soloist performing with orchestras around the world and a recording artist. He has recorded more than 90 albums and received 18 Grammy Awards.", genre: "Classical", img_url: "https://upload.wikimedia.org/wikipedia/commons/1/1a/Yo-Yo_Ma_2013.jpg", password: "artist" )
Artist.create(name: "Roy Woods", email: "roywoods@gmail.com", description: "Denzel Spencer (born April 18, 1996), better known by his stage name Roy Woods (stylized as Roy Wood$), is a Canadian singer and songwriter. He is signed to OVO Sound, of which was the record label that was co-founded by Canadian rapper and singer Drake, record producer Noah Shebib and Oliver El-Khatib. He is also the founder of the collective, called Unlock The Underground.", genre: "FIRE", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Roy_Woods_2018.png/220px-Roy_Woods_2018.png", password: "artist")

Artist.create(name: "Pecos Kanvas", email: "pecoskanvas@gmail.com", description: "At the age of 15 he participated in ecclesiastical youth choirs and later he participated in the Alfredo Ledezma Show and the group Escena. Four years later, Rudy Márquez gave him the stage name he used throughout his life. He worked on composing telenovelas for RCTV, making himself famous when he release", genre: "OLD SCHOOL Spanish", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Roy_Woods_2018.png/220px-Roy_Woods_2018.png", password: "artist" )


Venue.create(name: "The Electric Factory", email: "electric_factory@gmail.com", description: "The Electric Factory is a concert venue in Philadelphia, Pennsylvania, located at 421 N. 7th Street between Willow and Spring Garden Streets in a converted electric factory. It opened in 1995 and was named for the original Electric Factory.", location: "Philadelphia, Pennsylvania", img_url: "https://assets.visitphilly.com/wp-content/uploads/2017/12/crtsy-electric-factory-crowd-900VP.jpg", password: "venue")

Venue.create(name: "Madison Square Garden", email: "MSG@gmail.com", description: "Madison Square Garden, colloquially known as The Garden or in initials as MSG, is a multi-purpose indoor arena in the New York City borough of Manhattan. Located in Midtown Manhattan between 7th and 8th Avenues from 31st to 33rd Streets, it is situated atop Pennsylvania Station. It is the fourth venue to bear the name Madison Square Garden; the first two (1879 and 1890) were located on Madison Square, on East 26th Street and Madison Avenue, with the third Madison Square Garden (1925) further uptown at Eighth Avenue and 50th Street.", location: "New York, New York", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Madison_Square_Garden%2C_February_2013.jpg/1280px-Madison_Square_Garden%2C_February_2013.jpg", password: "venue")

Venue.create(name: "Rockwood Music Hall", email: "RMH@gmail.com", description: "Rockwood Music Hall is a music venue at 196 Allen Street on the Lower East Side of Manhattan, New York City. Owner Ken Rockwood opened the establishment in 2005 as a small bar and music venue.", location: "New York, New York", img_url: "https://image-ticketfly.imgix.net/00/02/61/05/23-og.jpg?w=500&h=334&fit=crop&crop=top", password: "venue")

Event.create(artist_id: 1, venue_id: 1, description: "AC/DC playing at the electric factory", date: "12-08-2018" )
Event.create(artist_id: 2, venue_id: 2, description: "Rick Ross debuts his newest album: God made me a hood billionaire to his largest audience yet", date: "11-28-2018" )
Event.create(artist_id: 3, venue_id: 3, description: "Bono wears his signature glasses and U2 prepares for a stunning performance.", date: "01-06-2019" )
Event.create(artist_id: 4, venue_id: 2, description: "Yo-Yo Ma and world reknowned orchestra put on a masterful performance.", date: "03-14-2019" )
