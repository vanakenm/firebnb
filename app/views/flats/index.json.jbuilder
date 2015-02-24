json.array!(@flats) do |flat|
  json.extract! flat, :id, :name, :description, :owner_id, :city, :address
  json.url flat_url(flat, format: :json)
end
