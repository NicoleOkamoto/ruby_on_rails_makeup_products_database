class AddDetailsToOrderables < ActiveRecord::Migration[7.2]
  def change
    add_reference :orderables, :makeup_product, null: false, foreign_key: true
    add_reference :orderables, :cart, null: false, foreign_key: true
    add_column :orderables, :quantity, :integer
  end
end
