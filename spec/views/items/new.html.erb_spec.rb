require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :name => "MyString",
      :type => "",
      :traits => ""
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_type[name=?]", "item[type]"
      assert_select "input#item_traits[name=?]", "item[traits]"
    end
  end
end
