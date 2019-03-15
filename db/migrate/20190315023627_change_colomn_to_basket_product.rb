class ChangeColomnToBasketProduct < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:basket_products, :quantity, 0)
  end
end
