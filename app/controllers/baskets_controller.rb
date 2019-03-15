class BasketsController < ApplicationController
   before_action :logged_in?
   before_action :setup_cart_item!, only: [:create]
   
  def index
    basket_products = current_basket.basket_products
    @products = []
    basket_products.each do|basket_product|
      @products.push(Product.find(basket_product.product_id))
    end
  end
  
  def create
    if user_signed_in?
      if @basket_product.blank?
        @basket_product = current_basket.basket_products.build(product_id: params[:product_id])
      end
      @basket_product.quantity += 1
      @basket_product.save
      redirect_to baskets_path
    else
      redirect_to root_path
    end
  end
  
  def destroy
    @basket_product = current_basket.basket_products.find_by(product_id: params[:id])
    @basket_product.destroy
    redirect_to baskets_path
  end
  
  private
  
  def logged_in?
    redirect_to root_path if !user_signed_in?
  end
  
  def setup_cart_item!
    @basket_product = current_basket.basket_products.find_by(product_id: params[:product_id])
  end
end
