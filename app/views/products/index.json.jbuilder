json.array!(@products) do |product|
  json.extract! product, :nivo_takmicenja,:razred, :godina, :zadatak, :resenje, :id_zadatka
  json.url product_url(product, format: :json)
end





