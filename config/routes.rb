Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :clients, only: [:index]
      resources :days, only: [:index]
      resources :contracts, only: [:index]
      resources :allotted_hours, only: [:create, :index]
    end
  end
end
