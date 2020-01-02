Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Routes for the homepage

  get '/' => 'welcome#index', as: 'home'

  # Routes for registering a new user

  resources :users, only: [:new, :create]

  # Routes for logging in for existing users

  get '/login' => 'user_sessions#new', as: 'login'

  post '/login' => 'user_sessions#create'

  delete '/logout' => 'user_sessions#destroy', as: 'logout'

  # Routes for selecting tests by Users

  resources :tests, only: [:index, :show]

  # Routes to create sessions with content 

  resources :test_sessions, only: [:create, :show, :update]

  get '/test_sessions/:id/test_complete' => 'test_sessions#test_complete', as: 'test_complete'

  # Routes to create and view reports after tests

  resources :reports, only: [:create, :show, :index, :update]

  # Routes for the admin sessions

  get '/admin/login' => 'admin_sessions#new', as: 'admin_login'

  post '/admin' => 'admin_sessions#create', as: 'admin'

  delete '/admin/logout' => 'admin_sessions#destroy', as: 'admin_logout'

  # Routes for the admin dashboard

  get '/admin/dashboard' => 'admins#dashboard', as: 'admin_dashboard'

end
