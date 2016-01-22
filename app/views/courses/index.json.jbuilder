json.array!(@courses) do |course|
  json.extract! course, :id, :code, :name, :description, :thumbnail, :publish, :slug, :lecturer_id
  json.url course_url(course, format: :json)
end
