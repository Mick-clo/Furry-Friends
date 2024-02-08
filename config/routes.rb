Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  require "sidekiq/web"

  mount Sidekiq::Web => '/sidekiq'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :shelters, only: [:index, :show]
  # don't modify this line
  resources :pages do
    get 'dashboard', on: :collection
  end
  resources :chatrooms, only: [:show, :new, :create] do
    resources :messages, only: :create
  end
  resources :pets, only: [:show, :new, :create] do
    member do
      post 'feed'
      post 'play'
      post 'care'
    end
  end
end
