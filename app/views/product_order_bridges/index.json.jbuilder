json.array!(@product_order_bridges) do |product_order_bridge|
  json.extract! product_order_bridge, :id, :order_id, :product_id
  json.url product_order_bridge_url(product_order_bridge, format: :json)
end
