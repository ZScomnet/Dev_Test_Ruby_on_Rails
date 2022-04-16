Rails.application.routes.draw do
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resource :users, only: [:create]
  # user_URI
  post "/api/v1/auth/signin", to: "users#login"
  post "/api/v1/users/signup", to: "users#create"

  # project_URI
  post "/api/v1/projects", to: "projects#create"

  get "/api/v1/projects", to: "projects#index"
  get "/api/v1/projects/my_projects", to: "projects#own_show"
  get "/api/v1/projects/:id", to: "projects#show"

  put "/api/v1/projects/:id", to: "projects#update"
  patch "/api/v1/projects/:id", to: "projects#update"

  delete "/api/v1/projects/:id", to: "projects#destroy"
  
  # content URI
  get "/api/v1/projects/:project_id/contents", to: "contents#index"
  get "/api/v1/projects/:project_id/contents/:id", to: "contents#show"
  
  post "/api/v1/projects/:project_id/contents", to: "contents#create"
  
  put "/api/v1/contents/:id", to: "contents#update"
  patch "/api/v1/contents/:id", to: "contents#update"

  delete "/api/v1/contents/:id", to: "contents#destroy"
end
