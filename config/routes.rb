Rails.application.routes.draw do

  devise_for :users
  resources :products
  resources :baskets
  resources :payment
  root to: "home#index"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
