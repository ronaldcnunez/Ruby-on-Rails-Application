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

#  SESSIONS
get 'artist/login', to: 'artist_sessions#new', as: 'artists_login'
post '/login', to: 'artist_sessions#create'
delete '/logout', to: 'artist_sessions#destroy'

get 'venue/login', to: 'venue_sessions#new', as: 'venues_login'
post '/login', to: 'venue_sessions#create'
delete '/logout', to: 'venue_sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
