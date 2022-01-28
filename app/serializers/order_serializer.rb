class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :subtotal, :tax, :total

  belongs_to :user
  has_many :carted_products
  has_many :products
end
