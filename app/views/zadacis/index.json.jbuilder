json.array!(@zadacis) do |zadaci|
  json.extract! zadaci, :id, :razred, :oblast, :opis, :zadatak
  json.url zadaci_url(zadaci, format: :json)
end
