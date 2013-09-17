json.array!(@side_types) do |side_type|
  json.extract! side_type, 
  json.url side_type_url(side_type, format: :json)
end
