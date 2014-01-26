class Type < ActiveRecord::Base
  has_many :items
  attr_accessor :required_traits
  attr_accessor :allowed_traits
  
end
