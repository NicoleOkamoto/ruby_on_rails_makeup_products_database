class BrandsController < ApplicationController
  def index
    @brand = Brand.joins(:makeup_products).distinct
  end

  def show
    @brand = Brand.find(params[:id])
    @makeup_products = @brand.makeup_products
  end
end
