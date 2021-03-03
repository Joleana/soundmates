Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chatrooms, only: [ :index, :show] do
    resources :messages, only: [:show, :create]
  end
end
