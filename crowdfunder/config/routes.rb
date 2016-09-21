Rails.application.routes.draw do

  resources :projects do
    resources :rewards
  end

  resource :users

  root "projects#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
