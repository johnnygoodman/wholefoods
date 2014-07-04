class Customer < ActiveRecord::Base
  has_many :customer_order_bridges
end
