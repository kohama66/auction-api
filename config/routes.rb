Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :auctions, only: %i[create] do
        resources :products, only: %i[index]
      end
      resources :products, only: %i[create]
    end
  end
end
