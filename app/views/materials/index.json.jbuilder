json.array!(@materials) do |material|
  json.extract! material, :id, :material_name, :material_file, :description, :monetize, :amount, :save_status, :course_id
  json.url material_url(material, format: :json)
end
