Rails.application.routes.draw do
#MVP
resources :events
resources :venues
resources :artists
resources :confirmed_events
#STATIC
root to: 'static#home'
get '/about', to: 'static#about'
get '/contact', to: 'static#contact'
get '/faq', to: 'static#faq'

 # Artist SESSIONS
get 'artist/login', to: 'artist_sessions#new', as: 'artist_login'
post 'artist/login', to: 'artist_sessions#create'
delete '/artist/logout', to: 'artist_sessions#destroy', as: 'artist_logout'

get '/artist/profile', to: 'artists#profile', as: 'artist_profile'
get '/artist/profile/edit', to: 'artists#edit', as: 'artist_edit_profile'

# Venue Sessions
get 'venue/login', to: 'venue_sessions#new', as: 'venue_login'
post 'venue/login', to: 'venue_sessions#create'
delete '/venue/logout', to: 'venue_sessions#destroy', as: 'venue_logout'

get '/venue/profile', to: 'venues#profile', as: 'venue_profile'
get '/venue/profile/edit', to: 'venues#edit', as: 'venue_edit_profile'

# CONFIRM post

post '/events/:id/confirm', to: 'events#confirm', as: 'confirm' 




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
