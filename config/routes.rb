Rails.application.routes.draw do


  resources :colleges
  resources :users
  resources :submissions #, only: [:index, :new, :show, :create, :edit]

  root 'sessions#home'

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/auth/github/callback' => 'sessions#create'


  resources :users , only: [:new, :show] do
    resources :submissions , only: [:show, :index]
  end

  resources :colleges , only: [:new, :show] do
    resources :submissions , only: [:show, :index, :edit]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
