Rails.application.routes.draw do

root :to => "homes#index"
resources :links
resources :votes
resources :comments
resources :points
resources :users
resources :homes

end
