Umrbrazil::Application.routes.draw do
  resources :companies

  scope 'admin' do
    resources :accounts
    resources :users
  end

  root :to => 'home#index'
end
