class Brand < ApplicationRecord
  has_many :makeup_products

  validates :brand_name, presence: true, uniqueness: true
end
