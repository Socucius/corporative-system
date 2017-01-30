Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :employees, module: 'employees', only: 'sessions'
  devise_for :customers, module: 'customers'
  root 'home#index'

  namespace :customer do
    resources :projects
  end
end
