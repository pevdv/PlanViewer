json.array!(@floors) do |floor|
  json.extract! floor, :id, :number, :code, :building_id
  json.url floor_url(floor, format: :json)
end
