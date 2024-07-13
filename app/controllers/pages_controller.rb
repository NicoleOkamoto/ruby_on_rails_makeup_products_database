class PagesController < ApplicationController
  def about
  end

  def product
    @makeup_products = MakeupProduct.all
  end
end
