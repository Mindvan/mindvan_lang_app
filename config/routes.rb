Rails.application.routes.draw do
  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'
  resources :images
  resources :themes
  resources :values
  resources :users
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # work
  match 'work',                  to: 'work#index',                  via: 'get'
  match 'choose_theme',     to: 'work#choose_theme',      via: :get
  match 'display_theme',    to: 'work#display_theme',      via: :post


  # Defines the root path route ("/")
  # root "posts#index"
  # root 'work#index'
  root 'main#index'
end
