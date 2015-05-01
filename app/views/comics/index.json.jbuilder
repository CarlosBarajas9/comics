json.array!(@comics) do |comic|
  json.extract! comic, :id, :nombre, :extension
  json.url comic_url(comic, format: :json)
end
