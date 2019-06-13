Rails.application.routes.draw do
  resources :categories
  resources :destinations
  namespace :api do
    namespace :v1 do
      resources :users
      resources :locations
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
