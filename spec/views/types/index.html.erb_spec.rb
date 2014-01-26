require 'spec_helper'

describe "types/index" do
  before(:each) do
    assign(:types, [
      stub_model(Type,
        :name => "Name",
        :required_traits => "",
        :optional_traits => ""
      ),
      stub_model(Type,
        :name => "Name",
        :required_traits => "",
        :optional_traits => ""
      )
    ])
  end

  it "renders a list of types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
