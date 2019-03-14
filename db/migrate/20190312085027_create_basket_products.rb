class CreateBasketProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :basket_products do |t|
      t.integer :quantity
      t.references :product, foreign_key: true
      t.references :basket, foreign_key: true

      t.timestamps
    end
  end
end
