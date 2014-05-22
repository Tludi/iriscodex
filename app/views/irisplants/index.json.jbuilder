json.array!(@irisplants) do |irisplant|
  json.extract! irisplant, :id, :name, :region, :year, :image_url, :iristype
  json.url irisplant_url(irisplant, format: :json)
end
