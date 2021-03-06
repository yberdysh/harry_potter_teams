Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :characters, only: [:index, :show, :create, :destroy, :update]
      resources :users, only: [:index, :show, :create, :destroy, :update]
      resources :teams, only: [:index, :show, :create, :destroy, :update]
      resources :positions, only: [:index, :show, :create]
      resources :houses, only: [:index, :show, :create, :destroy, :update]
    end
  end
end
