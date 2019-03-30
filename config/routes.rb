Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :characters, only: [:index, :show, :create]
      resources :users, only: [:index, :show]
      resources :teams, only: [:index, :show]
      resources :positions, only: [:index, :show]
      resources :houses, only: [:index, :show, :create]
    end
  end
end
