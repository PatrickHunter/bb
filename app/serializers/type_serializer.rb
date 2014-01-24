class TypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :required_attributes, :optional_attributes
end
