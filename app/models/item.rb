class Item < ActiveRecord::Base
  has_one type
  attr_accessor item_attributes
end
