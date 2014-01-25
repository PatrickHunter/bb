class Type < ActiveRecord::Base
  has_many items
  attr_accessor :required_attributes
  attr_accessor :optional_attributes
end
