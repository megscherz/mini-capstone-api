Rails.application.routes.draw do
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/any_products/:id" => "products#show"
  patch "/any_products/:id" => "products#update"
  delete "/any_products/:id" => "products#destroy"
end
