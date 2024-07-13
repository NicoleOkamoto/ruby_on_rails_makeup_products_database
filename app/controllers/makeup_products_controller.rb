class MakeupProductsController < ApplicationController
  def index
    @makeup_products = MakeupProduct.paginate(page: params[:page], per_page: 20)
  end

  def show
    @makeup_product = MakeupProduct.find(params[:id])
  end
end
