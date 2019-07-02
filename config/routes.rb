Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  post "/api/v1/signup", to: "api/v1/users#create"
  delete "/api/v1/logout", to: "api/v1/sessions#destroy" 
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  get "/api/v1/destinations", to: "api/v1/destinations#destinations"
  
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :pins
        resources :destinations
      end

      resources :destinations, only: [:index, :create] do
        resources :categories, only: [:show]
      end

      resources :categories, only: [:index, :show]
        resources :destinations, only: [:index]
      end
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
