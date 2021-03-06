class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { in: 10..500 }
  validates :quantity, presence: true, numericality: true

  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :product_categories
  has_many :categories, through: :product_categories

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def average
    price.all / product.count
  end
end
