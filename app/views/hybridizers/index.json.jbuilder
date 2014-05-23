json.array!(@hybridizers) do |hybridizer|
  json.extract! hybridizer, :id, :firstname, :lastname, :irisplant_id
  json.url hybridizer_url(hybridizer, format: :json)
end
