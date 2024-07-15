class RemoveProductTypeFromMakeupProducts < ActiveRecord::Migration[7.2]
  def change
    remove_column :makeup_products, :product_type, :string
  end
end
