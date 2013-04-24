Popvent::Application.routes.draw do
  root to: 'amorphous_pages#index'
  
  resources :users
  resources :user_sessions
  
  #user resource route overrides
  match '/signup', to: 'users#new'
  match '/list', to: 'users#show'
  
  #user sessions resource route overrides
  match '/login', to: 'user_sessions#new'
  match '/logout', to: 'user_sessions#destroy'
end
