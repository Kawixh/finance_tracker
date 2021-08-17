Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get "/welcome", to: "welcome#index"
  # get "/welcome/:id", to: "welcome#index"
  get '/portfolio', to: 'users#portfolio'
  root "welcome#index"
  get 'stocks/search', to: 'stocks#search'
  get '/friends', to: 'users#friends'
  get '/friends/search/', to: 'users#search'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
