Rails.application.routes.draw do
  resources :restaurants, except: [:destroy] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
