Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # TODO: Adjust paths to remove "api/v1/" ??
      resources :users, only: [:index, :create, :show]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
