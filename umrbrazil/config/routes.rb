Umrbrazil::Application.routes.draw do
  scope 'admin' do
    resources :accounts
    resources :users
  end

  root :to => 'home#index'
end
