Rails.application.routes.draw do
  resources :humer_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # I want my api to be gifracts.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :emotions
      resources :gifs
    end
  end
end
