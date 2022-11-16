Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :groups, only: [:index, :show, :new, :create, :destroy] do
    resources :spendings, only: [:index, :new, :create, :destroy]
  end
end
