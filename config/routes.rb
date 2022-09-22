Rails.application.routes.draw do


  get 'auth_page/index'

  get 'home_page/index'

  devise_scope :paciente do
    authenticated :paciente do
      get "/pacientes/sign_out" => "devise/sessions#destroy"
    end
  end

  devise_scope :admin do
    authenticated :admin do
      get "/admins/sign_out" => 'devise/sessions#destroy'
      get "/pacientes/" => 'pacientes#index'
      get "/admins/" => 'admins#index'
      post "/admins/" => 'admins#create'
      post "/pacientes" => 'pacientes#create'
    end
  end

  devise_for :pacientes
  resources :pacientes
  devise_for :admins
  resources :admins



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'auth_page#index'
end
