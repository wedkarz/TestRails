json.array!(@meal_side_types) do |meal_side_type|
  json.extract! meal_side_type, 
  json.url meal_side_type_url(meal_side_type, format: :json)
end
