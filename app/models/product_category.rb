class ProductCategory < ApplicationRecord
  has_many :makeup_products
  has_many :ordeables
  has_many :makeup_products, through: :ordeables

  validates :product_type, presence: true
end
