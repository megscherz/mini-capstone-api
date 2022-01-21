class ProductsController < ApplicationController
  def index
    products = Product.all
    if params[:search]
      products = products.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      products = Product.where("price < ?", 100)
    end

    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        products = Product.order(price: :desc)
      else
        products = Product.order(price: :asc)
      end
    else
      products = products.order(:id)
    end

    render json: products
  end

  def create
    products = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      quantity: params[:quantity],
    )
    if products.save
      render json: products
    else
      render json: { errors: products.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    products = Product.find(params[:id])
    render json: products
  end

  def update
    products = Product.find(params[:id])
    products.name = params[:name] || products.name
    products.price = params[:price] || products.price
    products.description = params[:description] || products.description
    products.quantity = params[:quantity] || products.quantity
    if products.save
      render json: products
    else
      render json: { errors: products.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    products = Product.find(params[:id])
    products.destroy
    render json: { message: "Your product has been desimated." }
  end
end
