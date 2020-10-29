Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      post '/logout', to: 'auth#destroy'
      resources :users, only: [:show, :create]
      resources :topic_requests, only: [:index, :create]
    end
  end
end
