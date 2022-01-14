class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product
  end

  # def any_product
  #   product_name = params[:id]
  #   render json: { message: "Any product" }
  # end

  def show
    id = params[:id]
    product = Product.find(id: id)
    render json: product
  end
end
