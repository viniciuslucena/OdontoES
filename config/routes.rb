Rails.application.routes.draw do
  devise_for :pacientes
  get 'auth_page/index'
  devise_for :admins
  get 'home_page/index'
  resources :pacientes, only: [:edit,:destroy, :update]
  devise_scope :admin do
    authenticated :admin do
      get "/admins/sign_out" => 'devise/sessions#destroy'
      get "/pacientes/" => 'pacientes#index'
      get "/pacientes/:id" => 'pacientes#show'
    end

  end
  devise_scope :paciente do
    authenticated :paciente do
      get "/pacientes/sign_out" => "devise/sessions#destroy"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'auth_page#index'
end
