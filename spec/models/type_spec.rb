require 'spec_helper'

describe Type do
  before(:each) { @type = Type.new(name:"Example type", required_traits:Set.new([:length]), allowed_traits:Set.new([:length])) }
  
  subject { @type }
  
  it { should respond_to(:name) }
  it { should respond_to(:allowed_traits) }
  it { should respond_to(:required_traits) }
  it { should be_valid }
  
  describe "required traits should be a subset of allowed_traits" do
    before { @type.required_traits.add(:uncle) }
    it { should_not be_valid }
  end
end
