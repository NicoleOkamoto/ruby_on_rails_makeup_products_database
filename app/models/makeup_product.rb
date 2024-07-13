class MakeupProduct < ApplicationRecord
  belongs_to :product_category
  belongs_to :brand

  validates :product_name, presence: true
  validates :product_type, presence: true
  validates :product_category_id, presence: true
  validates :brand_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :product_api_url, presence: true, format: { with: URI.regexp(%w[http https]), message: "must be a valid URL" }
end
