class Type < ActiveRecord::Base
  has_many :items
  attr_accessor :required_traits
  attr_accessor :allowed_traits
  validate :required_traits_in_allowed
  
  def required_traits_in_allowed
    if ! required_traits.subset?(allowed_traits)
     #errors.add won't take Sets
     s="allowed traits"
     errors.add(s,"all required traits should also be allowed")
    end
  end
    
  
end
