json.array!(@buildings) do |building|
  json.extract! building, :id, :address, :name, :postal_code
  json.url building_url(building, format: :json)
end
