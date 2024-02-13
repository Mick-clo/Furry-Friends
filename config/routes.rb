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
  resources :shelters, only: [:index, :show] do
    resources :pets, only: [:new, :create]
  end
  resources :pages do
    collection do
      get 'dashboard'
    end
  end
  resources :chatrooms, only: [:show, :new, :create, :index] do
    resources :messages, only: :create
  end
  resources :pets, only: [:show] do
    member do
      post 'feed'
      post 'play'
      post 'care'
    end
  end

  get 'faqs', to: 'pages#faq'

  resources :users, only: [:update]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

end
