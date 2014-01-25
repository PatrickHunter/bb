require 'spec_helper'

describe Item do
  before do 
    @type = Type.new(name:"Example type", required_attributes:Set.new["length"], optional_attributes:Nil)
    @item = Item.new(name: "Example item", type: "Example type", item_attributes:{length:2})
  end
  
  subject { @item }
  
  it { should respond_to(:name) }
  it { should respond_to(:item_attributes) }
  it { should respond_to(:type) }
  
  it { should be_valid }
  
  describe "when it is missing a required attribute" do
    before { @item.item_attributes.delete("length") }
    it { should_not be_valid }
  end
  
  describe "when it has an attribute it's type can't have" do
    before { @item.item_attributes.add("Uncle", "Bob") }
    it { should_not be_valid }
  end
end
