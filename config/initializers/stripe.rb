Rails.configuration.stripe = {
  :stripe_api_key => ENV['STRIPE_API_KEY'],#stipeのページに行って自分のアカウントから取ってくる
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]