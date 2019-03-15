class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :current_basket
  
  def current_basket
    if user_signed_in?
      if session[:basket_id]
        @basket = Basket.find(session[:basket_id])
      else
        @basket = current_user.create_basket
        session[:basket_id] = @basket.id
        @basket
      end
    end
  end
end
