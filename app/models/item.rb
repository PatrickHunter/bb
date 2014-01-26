class Item < ActiveRecord::Base
  belongs_to :type
  attr_accessor :item_traits
  validates_associated :type
  validate :appropriate_traits_for_type 
  
  def appropriate_traits_for_type
    puts item_traits
    if ! item_traits.respond_to?('keys')
      errors.add(item_traits, "should be a hash or other dictionary like collection")
      return
    end
    for trait in item_traits.keys
      if ! type.allowed_traits.include?(trait)
        errors.add(trait, "#{trait} is not a valid trait for items of type #{type}")
      end 
    end
    for trait in type.required_traits
      if ! item_traits.keys.include?(trait)
        errors.add(trait, "#{trait} is a required trait for items of type #{type}")
      end
    end
    
  end
  
end
