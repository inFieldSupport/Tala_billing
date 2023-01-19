Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/signin', to: 'sessions#new', as:"login"
  post '/signin', to: 'sessions#create'
  get '/signout', to: 'sessions#logout', as:"logout"

  get'/admin_panel', to: "admin_panel#index"
  get'/edit_price',to: "admin_panel#edit_price"
  get'/edit_active_user',to: "admin_panel#edit_active_user"
  root 'sessions#new'
end
