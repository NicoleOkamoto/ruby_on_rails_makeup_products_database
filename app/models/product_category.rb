class ProductCategory < ApplicationRecord
  has_many :makeup_products

  validates :product_type, presence: true
end
