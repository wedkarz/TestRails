json.array!(@meals) do |meal|
  json.extract! meal, :name
  json.url meal_url(meal, format: :json)
end
