# == Schema Information
#
# Table name: basket_products
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  product_id :integer
#  basket_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BasketProduct < ApplicationRecord
  belongs_to :product
  belongs_to :basket
end
