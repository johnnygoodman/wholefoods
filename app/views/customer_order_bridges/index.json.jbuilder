json.array!(@customer_order_bridges) do |customer_order_bridge|
  json.extract! customer_order_bridge, :id, :order_id, :customer_id
  json.url customer_order_bridge_url(customer_order_bridge, format: :json)
end
