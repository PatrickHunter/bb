require 'spec_helper'

describe "types/new" do
  before(:each) do
    assign(:type, stub_model(Type,
      :name => "MyString",
      :required_traits => "",
      :optional_traits => ""
    ).as_new_record)
  end

  it "renders new type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", types_path, "post" do
      assert_select "input#type_name[name=?]", "type[name]"
      assert_select "input#type_required_traits[name=?]", "type[required_traits]"
      assert_select "input#type_optional_traits[name=?]", "type[optional_traits]"
    end
  end
end
