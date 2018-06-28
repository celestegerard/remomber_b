Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :families, only: [:index, :create]
      resources :memories, only: [:index, :create]
      resources :members, only: [:index, :create]
      resources :tags, only: [:index, :create]
    end
  end
end
