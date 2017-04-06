Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Root of application
  root "projects#index"

  resources :projects do
    resources :tickets
  end
end
