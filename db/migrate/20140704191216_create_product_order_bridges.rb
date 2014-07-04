class CreateProductOrderBridges < ActiveRecord::Migration
  def change
    create_table :product_order_bridges do |t|
      t.references :order, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
