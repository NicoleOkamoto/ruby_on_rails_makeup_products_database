class MakeupProductsController < ApplicationController
  def index
    @makeup_products = MakeupProduct.all
  end

  def show
    @makeup_product = MakeupProduct.find(params[:id])
  end
end
