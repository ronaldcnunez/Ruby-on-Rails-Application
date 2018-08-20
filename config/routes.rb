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

#SESSIONS
get '/login', to: 'artist_sessions#new'
get '/login', to: 'artist_sessions#create'
get '/logout', to: 'artist_sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
