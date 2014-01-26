json.array!(@items) do |item|
  json.extract! item, :id, :name, :type, :traits
  json.url item_url(item, format: :json)
end
