class Orderable < ApplicationRecord
  belongs_to :makeup_product
  belongs_to :cart

  def total
    makeup_product.price * quantity
  end
end
