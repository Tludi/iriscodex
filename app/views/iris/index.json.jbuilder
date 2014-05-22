json.array!(@iris) do |iri|
  json.extract! iri, :id, :hybridizer, :region, :name, :year, :seedling
  json.url iri_url(iri, format: :json)
end
