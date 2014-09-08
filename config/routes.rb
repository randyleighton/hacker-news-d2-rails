Rails.application.routes.draw do
root :to => "homes#index"
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'

resources :sessions
resources :comments
resources :points
resources :users
resources :homes

resources :links do
  resources :votes
end

end
