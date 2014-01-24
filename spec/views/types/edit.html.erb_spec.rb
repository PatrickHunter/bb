require 'spec_helper'

describe "types/edit" do
  before(:each) do
    @type = assign(:type, stub_model(Type,
      :name => "MyString",
      :required_attributes => "",
      :optional_attributes => ""
    ))
  end

  it "renders the edit type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", type_path(@type), "post" do
      assert_select "input#type_name[name=?]", "type[name]"
      assert_select "input#type_required_attributes[name=?]", "type[required_attributes]"
      assert_select "input#type_optional_attributes[name=?]", "type[optional_attributes]"
    end
  end
end
