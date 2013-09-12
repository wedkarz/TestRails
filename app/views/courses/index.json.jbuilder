json.array!(@courses) do |course|
  json.extract! course, :name, :price, :weight, :description, :image_url
  json.url course_url(course, format: :json)
end
