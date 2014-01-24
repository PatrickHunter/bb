class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :attributes
end
