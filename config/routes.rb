Umrbrazil::Application.routes.draw do
  resources :anamneses

  resources :exams

  resources :histories

  resources :companies

  scope 'admin' do
    resources :accounts
    resources :users
  end

  root :to => 'home#index'
end
