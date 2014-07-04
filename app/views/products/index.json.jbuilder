json.array!(@products) do |product|
  json.extract! product, :id, :name, :plu, :organic, :brand_substitution, :organic_substitution
  json.url product_url(product, format: :json)
end
