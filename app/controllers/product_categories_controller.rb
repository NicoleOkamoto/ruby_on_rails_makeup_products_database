class ProductCategoriesController < ApplicationController
  def index
    @product_category = ProductCategory.all
  end

  def show
    @product_category = ProductCategory.find(params[:id])
    @makeup_product = @product_category.makeup_products
  end
end
