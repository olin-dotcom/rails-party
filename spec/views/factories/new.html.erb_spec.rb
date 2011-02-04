require 'spec_helper'

describe "factories/new.html.erb" do
  before(:each) do
    assign(:factory, stub_model(Factory,
      :name => "MyString",
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new factory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => factories_path, :method => "post" do
      assert_select "input#factory_name", :name => "factory[name]"
      assert_select "input#factory_location", :name => "factory[location]"
    end
  end
end
