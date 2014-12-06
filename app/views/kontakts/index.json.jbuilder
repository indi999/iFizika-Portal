json.array!(@kontakts) do |kontakt|
  json.extract! kontakt, :id, :ime, :prezime, :email, :poruka
  json.url kontakt_url(kontakt, format: :json)
end
