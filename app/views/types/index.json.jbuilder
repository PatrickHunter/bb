json.array!(@types) do |type|
  json.extract! type, :id, :name, :required_attributes, :optional_attributes
  json.url type_url(type, format: :json)
end
