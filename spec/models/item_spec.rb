require 'spec_helper'

describe Item do
  before(:each) do 
    @type = Type.new(name:"Example type", required_traits:Set.new([:length]), allowed_traits:Set.new([:length]))
    @item = Item.new(name: "Example item", item_traits:{length:2})
    @item.type=@type
  end
  
  subject { @item }
  
  it { should respond_to(:name) }
  it { should respond_to(:item_traits) }
  it { should respond_to(:type) }
  
  it { should be_valid }
  
  describe "when it is missing a required trait" do
    before { @item.item_traits.delete(:length) }
    it { should_not be_valid }
  end
  
  describe "when it has an trait it's type can't have" do
    before { @item.item_traits["Uncle"]="Bob" }
    it { should_not be_valid }
  end
end
