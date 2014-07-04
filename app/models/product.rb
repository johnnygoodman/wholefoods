class Product < ActiveRecord::Base
  has_many :product_order_bridges
end
