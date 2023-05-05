Rails.application.routes.draw do
  namespace :api do
    resources :gyms, only: [:index]
    resources :routes, only: [:index]
  end 
end
