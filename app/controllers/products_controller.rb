class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    products = Product.all
    if params[:search]
      products = products.where("name iLIKE ?", "%#{params[:search]}%")
      products = Product.where("name LIKE ?", "T%")
      products = Product.all.order(id: :desc).first(3)
      products = Product.average(:price)
      products = Product.where("description LIKE ? OR description LIKE ?", "%awesome%", "%legendary%")
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

    if params[:average]
      products = Product.average("subtotal")
    end

    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      quantity: params[:quantity],
      supplier_id: params[:supplier_id],
    )
    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: :unauthorized
    end
  end

  def show
    product = Product.find(params[:id])
    pp current_user
    render json: product
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.quantity = params[:quantity] || product.quantity
    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Your product has been desimated." }
  end
end
