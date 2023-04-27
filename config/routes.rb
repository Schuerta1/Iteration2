Rails.application.routes.draw do
  get 'search', to: "search#index"
  devise_for :users
  resources :items
  root "items#index"
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
