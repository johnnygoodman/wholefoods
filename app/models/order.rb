class Order < ActiveRecord::Base
  has_many :product_order_bridges
  has_many :customer_order_bridges
end
