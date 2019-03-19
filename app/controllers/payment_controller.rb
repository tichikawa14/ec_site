class PaymentController < ApplicationController
  require 'dotenv'
  
  def new
  end
  
  def create

    # Token is created using Checkout or Elements!
    # Get the payment token ID submitted by the form:
    token = params[:stripeToken]
    
    Stripe::Charge.create({
      amount: 999,
      currency: 'jpy',
      description: 'Example charge',
      source: token,
    })

  end
  
  
end
