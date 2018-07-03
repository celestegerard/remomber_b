Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :families, only: [:index, :create]
      resources :memories, only: [:index, :create]
      resources :members, only: [:index, :create]
      resources :tags, only: [:index, :create]
      resources :sessions, only: [:index, :create]
      get '/members/:member_id/memories', to: 'members#members_memories'
    end
  end
end
