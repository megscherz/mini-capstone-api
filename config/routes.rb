Rails.application.routes.draw do
  get "/product" => "products#index"
  post "/product" => "products#create"
  get "/any_product/:id" => "products#show"
  patch "/any_product/:id" => "products#update"
  delete "/any_product/:id" => "products#destroy"
end
