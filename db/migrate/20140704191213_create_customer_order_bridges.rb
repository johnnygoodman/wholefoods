class CreateCustomerOrderBridges < ActiveRecord::Migration
  def change
    create_table :customer_order_bridges do |t|
      t.references :order, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
