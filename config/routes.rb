Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :characters, only: [:index]
      resources :users, only: [:index]
      resources :teams, only: [:index]
      resources :positions, only: [:index]
      resources :houses, only: [:index]
    end
  end
end
