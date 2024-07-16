class MakeupProductsController < ApplicationController
  def index
    if params[:search].present?
      @makeup_products = MakeupProduct.where('product_name LIKE ?', "%#{params[:search]}%").paginate(page: params[:page], per_page: 20)
    else
      @makeup_products = MakeupProduct.paginate(page: params[:page], per_page: 20)
    end
  end

  def show
    @makeup_product = MakeupProduct.find(params[:id])
  end

end
