Rails.application.routes.draw do


  resources :users , only: [:new, :create, :show, :edit, :update]
  resources :submissions

  root 'sessions#home'

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/auth/github/callback' => 'sessions#create'

  get 'popular' => 'colleges#popular'


  resources :users do
    resources :submissions , only: [:show, :index, :edit]
  end

  resources :colleges , only: [:show, :index] do
    resources :submissions , only: [:show, :index, :edit]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
