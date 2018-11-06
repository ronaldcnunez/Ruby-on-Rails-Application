# Module Two Project - Ruby on Rails Application 

## Description 
Here we built a simple application for artists and venues to use. An artist can sign up, login, search for venues and other artists and confirm requests from venues. A venue can also signup and login, search for other venues or artists, however only venues can to create an event request. For secure user signup BCrypt was used to hash and salt the password before saving it in our Postgresql Database. authentication to ensure proper user accessibility was accomplished with Brcrypt's authorized method which authenticates our user prior to granting access. Bootstrap and CSS was used to design our front end. The Faker gem was used to seed our database.  
## Instructions  
1. Fork and clone this repository
2. Install all gems necessary to run this app by entering in your terminal   bundle install 
3. Go into the proper directory by entering in your terminal cd Ruby-on-Rails-Application
4. Start the application by running the following bin/rails db:migrate RAILS_ENV=development && rails db:seed && rails s
    The first command is to create the migrations necessary, the second will seed our database with the data in seed.rb file and rails s will start our program
5. Head to http://localhost:3000/ to check it out! 
