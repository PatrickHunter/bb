json.array!(@types) do |type|
  json.extract! type, :id, :name, :required_traits, :optional_traits
  json.url type_url(type, format: :json)
end
