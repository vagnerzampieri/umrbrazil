Umrbrazil::Application.routes.draw do
  scope 'admin' do
    resources :conta, controller: :accounts, as: :accounts, path_names: {new: 'adicionar', edit: 'editar'}
    resources :usuarios, controller: :users, as: :users, path_names: {new: 'adicionar', edit: 'editar'}
    resources :anamineses, controller: :anamneses, as: :anamneses, path_names: {new: 'adicionar', edit: 'editar'}
    resources :exames, controller: :exams, as: :exams, path_names: {new: 'adicionar', edit: 'editar'}
    resources :historicos, controller: :histories, as: :histories, path_names: {new: 'adicionar', edit: 'editar'}
    resources :organizacoes, controller: :companies, as: :companies, path_names: {new: 'adicionar', edit: 'editar'}
  end

  root :to => 'home#index'
end
