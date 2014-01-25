class Item < ActiveRecord::Base
  has_one type
  attr_accessor :item_attributes
  validates :item_attributes.keys, inclusion: { in: type.allowed_attributes}
end
