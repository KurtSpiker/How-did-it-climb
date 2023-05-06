Rails.application.routes.draw do
  namespace :api do
    resources :gyms, param: :id, only: [:index, :show, :create] do
      resources :routes, only: [:index]
    end
    resources :routes, only: [:show]
  end
end
