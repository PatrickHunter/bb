class Type < ActiveRecord::Base
  has_many items
  attr_accessor :required_attributes
  attr_accessor :allowed_attributes
  
end
