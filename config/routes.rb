Rails.application.routes.draw do
  resources :stores, only: [:show] do 
    resources :pets, only: [:new, :create]
  end
end
