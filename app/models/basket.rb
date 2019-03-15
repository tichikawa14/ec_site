# == Schema Information
#
# Table name: baskets
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Basket < ApplicationRecord
  belongs_to :user
  has_many :basket_products
  has_many :Products, through: :basket_products
end
