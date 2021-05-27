Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  resources :bikes do
    resources :bookings, only: [:create, :show, :index]
  end

end
