require 'open-uri'
require 'json'

# Clear existing data
MakeupProduct.delete_all
ProductCategory.delete_all
Brand.delete_all

# Fetch data from Makeup API endpoint
url = 'http://makeup-api.herokuapp.com/api/v1/products.json'
response = URI.open(url)
data = JSON.parse(response.read)

# Initialize arrays to store unique product types and brands
product_types = Set.new
brands = Set.new

# Process each product from the API response
data.each do |product_data|
  # Create or find product category
  product_category = ProductCategory.find_or_create_by(
    product_type: product_data['product_type'],
    product_category: product_data['category']
  )
  product_types << product_data['product_type']

  # Create or find brand
  brand = Brand.find_or_create_by(
    brand_name: product_data['brand']
  )
  brands << product_data['brand']

  # Create makeup product
  MakeupProduct.create(
    product_name: product_data['name'],
    product_type: product_data['product_type'],
    product_category_id: product_category.id,
    product_tags: product_data['tag_list'].join(', '),
    brand_id: brand.id,
    price: product_data['price'].to_f,
    description: product_data['description'],
    tag_list: product_data['tag_list'].join(', '),
    created_at: product_data['created_at'],
    updated_at: product_data['updated_at'],
    product_api_url: product_data['product_api_url'],
    api_featured_image: product_data['api_featured_image']
  )
end

puts "Seed data imported successfully."
puts "Total Makeup Products: #{MakeupProduct.count}"
puts "Total Product Categories: #{ProductCategory.count}"
puts "Total Brands: #{Brand.count}"
puts "Unique Product Types: #{product_types.to_a}"
puts "Unique Brands: #{brands.to_a}"
