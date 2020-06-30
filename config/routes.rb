Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      resources :users, only: [:index, :show, :create]
      resources :topic_requests, only: [:index]
    end
  end
end
