Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes, only: [:index, :new, :show]
  get  'users/:id' =>  'users#show'
end
