class BasketsController < ApplicationController
   before_action :setup_cart_item!, only: [:create]
   
  def show
    @basket_products = current_basket.basket_products
  end
  
  def create
    if @basket_product.blank?
      @basket_product = current_basket.basket_products.build(product_id: params[:product_id])
    end
    @basket_product.quantity += 1
    @basket_product.save
  end
  
  private
  
  def setup_cart_item!
    @basket_product = current_basket.basket_products.find_by(product_id: params[:product_id])
  end
end
