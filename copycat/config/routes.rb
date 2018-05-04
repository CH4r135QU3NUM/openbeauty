Rails.application.routes.draw do
  
  root to: 'users#home'
  get '/', to: 'users#home' 
  get '/new', to: 'users#new', as: 'inscription'
  post '/new', to: 'users#create'
  get '/login', to: 'users#login'
  post '/login', to: 'users#check'
  get '/users/:id', to: 'users#show', as:'user'
  post '/new', to: 'events#new'
get 'events/new', to: 'events#new'
  get 'events/create', to: 'events#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
