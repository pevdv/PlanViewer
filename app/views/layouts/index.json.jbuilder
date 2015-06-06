json.array!(@layouts) do |layout|
  json.extract! layout, :id, :description, :file_location, :floor_id
  json.url layout_url(layout, format: :json)
end
