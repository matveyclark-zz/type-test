Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Routes for the homepage

  get '/' => 'welcome#index', as: 'home'

  # Routes for registering a new user

  get '/users/new' => 'users#new', as: 'new_user'

  post '/users' => 'users#create', as: 'users'

  # Routes for logging in for existing users

  get '/login' => 'sessions#new', as: 'login'

  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy', as: 'logout'
end
