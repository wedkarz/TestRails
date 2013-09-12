json.array!(@sides) do |side|
  json.extract! side, :name, :type
  json.url side_url(side, format: :json)
end
