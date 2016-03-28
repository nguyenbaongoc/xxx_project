json.array!(@images) do |image|
  json.extract! image, :id, :user_id, :title, :file, :created_at, :address, :comment
  json.url image_url(image, format: :json)
end
