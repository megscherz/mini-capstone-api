class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      orders = current_user.orders, include: "carted_products.products"
      render json: orders
    else
      render json: [], status: :unauthorized
    end
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    carted_products.map { |carted_product| carted_product.quantity * carted_product.product.price }.reduce(:+)
    end
    tax = subtotal * 0.09
    total = subtotal + tax
    order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total,
    )
    if order.save
      carted_products.update_all(order_id: order.id, status: "purchased")
      render json: order
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    order = current_user.orders.find(params[:id])
    if order
      render json: order
    else
      render json: {}, status: :unauthorized
    end
  end
end
