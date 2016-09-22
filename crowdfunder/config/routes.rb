Rails.application.routes.draw do

  devise_for :users
  resources :projects do
    resources :rewards
    resources :rewards_users
  end
  resources :users, only: [:show]


  root "projects#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
