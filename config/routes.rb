Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/all_products" => "products#index"

  get "/first_product", controller: "products", action: "first_product"

  get "/any_product" => "products#show"

  get "/any_product/:product" => "products#show"
end
