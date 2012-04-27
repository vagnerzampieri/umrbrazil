Umrbrazil::Application.routes.draw do
  resources :accounts

  resources :users

  root :to => 'home#index'
end
