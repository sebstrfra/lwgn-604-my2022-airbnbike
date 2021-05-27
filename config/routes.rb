Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :bikes, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

end
