class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.datetime :requested_delivery_date
      t.string :phone
      t.string :email
      t.string :street_address
      t.string :delivery_instructions

      t.timestamps
    end
  end
end
