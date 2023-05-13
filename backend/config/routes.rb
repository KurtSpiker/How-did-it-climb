Rails.application.routes.draw do


  devise_for :users, path: "api", path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'sign_up'
  },
  controllers: {
    sessions: 'api/auth/sessions',
    registrations: 'api/auth/registrations'
  }


  namespace :api do
    resources :gyms, param: :id, only: [:index, :show, :create] do
      resources :routes, only: [:index, :create]
    end
    resources :routes, param: :id, only: [:show] do
      resources :climbs, only: [:create, :index]
    end
    resources :climbs, only: [:show]

    get 'current_user', to: "current_user#index"
  end
end
