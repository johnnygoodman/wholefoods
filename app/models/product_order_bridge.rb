class ProductOrderBridge < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  has_one :order
end
