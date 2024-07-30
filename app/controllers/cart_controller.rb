class CartController < ApplicationController
  def show
    @render_cart = true
  end

  def add
    @makeup_product = MakeupProduct.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_orderable = @cart.orderables.find_by(makeup_product_id: @makeup_product.id)
    if current_orderable && quantity > 0
      current_orderable.update(quantity:)
    elsif quantity <= 0
      current_orderable.destroy
    else
      @cart.orderables.create(makeup_product: @makeup_product, quantity:)
    end
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [turbo_stream.update('cart',
                                                   partial: 'cart/cart',
                                                   locals: { cart: @cart.orderables }),
                              turbo_stream.replace('cart_content',
                                                   partial: 'cart/orderables',
                                                   locals: { orderables: @cart.orderables})
      ]
      end
    end
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [turbo_stream.replace('cart_content',
                                                   partial: 'cart/orderables',
                                                   locals: { orderables: @cart.orderables}),
                              turbo_stream.update('cart',
                                                   partial: 'cart/cart',
                                                   locals: { orderables: @cart})
      ]
      end
      end
    end
  end
