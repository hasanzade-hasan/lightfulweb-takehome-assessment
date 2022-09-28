Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "users#index"
  # get "/users", to: "users#index"
  post "/users", to: "users#create"
end
