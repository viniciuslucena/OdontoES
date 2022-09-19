Rails.application.routes.draw do
  devise_for :admins
  get 'home_page/index'
  resources :pacientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'home_page#index'
end
