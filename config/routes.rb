Rails.application.routes.draw do
  get "/welcome", to: "welcome#index"
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  root "welcome#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
