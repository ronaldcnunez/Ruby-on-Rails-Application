Rails.application.routes.draw do
#MVP
resources :events
resources :venues
resources :artists
#STATIC
root to: 'static#home'
get '/about', to: 'static#about'
get '/contact', to: 'static#contact'
get '/faq', to: 'static#faq'

 # Artist SESSIONS
get 'artist/login', to: 'artist_sessions#new', as: 'artist_login'
post 'artist/login', to: 'artist_sessions#create'
delete '/logout', to: 'artist_sessions#destroy', as: 'artist_logout'
# Venue Sessions
get 'venue/login', to: 'venue_sessions#new', as: 'venue_login'
post 'venue/login', to: 'venue_sessions#create'
delete '/logout', to: 'venue_sessions#destroy', as: 'venue_logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
