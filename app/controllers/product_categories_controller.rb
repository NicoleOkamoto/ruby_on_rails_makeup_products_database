class ProductCategoriesController < ApplicationController
  def index
    @product_type = ProductCategory.joins(:makeup_products)
                                   .distinct
                                   .order(:product_type)
                                   .pluck(:product_type)
  end

  def show
    product_type = params[:id]
    @product_category = ProductCategory.where("product_type = ? OR product_category = ?", product_type, product_type).first
    @makeup_products = MakeupProduct.joins(:product_category).where("product_categories.product_type = ? OR product_categories.product_category = ?", product_type, product_type)
  end
end
