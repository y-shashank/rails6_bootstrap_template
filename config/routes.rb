Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    root "users/sessions#new"
  end

  get "/dashboard", to: 'application#dashboard'

  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  
  resources :kitties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
