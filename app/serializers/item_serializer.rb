class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :traits
end
