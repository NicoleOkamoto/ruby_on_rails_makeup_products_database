class CreateMakeupProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :makeup_products do |t|
      t.string :product_name
      t.string :product_type
      t.integer :product_category_id
      t.string :product_tags
      t.integer :brand_id
      t.decimal :price
      t.text :description
      t.string :tag_list
      t.string :product_api_url
      t.string :api_featured_image

      t.timestamps
    end
  end
end
