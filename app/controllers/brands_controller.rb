class BrandsController < ApplicationController
  def index
    @brand = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
    @makeup_products = @brand.makeup_products
  end
end
