class CustomerOrderBridge < ActiveRecord::Base
  belongs_to :order
  belongs_to :customer
end
