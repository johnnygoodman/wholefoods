json.array!(@orders) do |order|
  json.extract! order, :id, :order_date, :requested_delivery_date, :phone, :email, :street_address, :delivery_instructions
  json.url order_url(order, format: :json)
end
