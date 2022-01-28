Rails.application.routes.draw do
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/any_products/:id" => "products#show"
  patch "/any_products/:id" => "products#update"
  delete "/any_products/:id" => "products#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
end
