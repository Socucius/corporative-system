Rails.application.routes.draw do
  devise_for :employees, module: 'employees', only: 'sessions'
  devise_for :customers, module: 'customers'
  root 'home#index'

  resources :projects

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
