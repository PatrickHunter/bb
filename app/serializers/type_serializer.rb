class TypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :required_traits, :optional_traits
end
