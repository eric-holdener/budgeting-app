Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  scope 'api/v1' do
    resources :users, only: %i[create show]
  end

  # Defines the root path route ("/")
  root "pages#index"
  get '*path', to: 'pages#index'
end
