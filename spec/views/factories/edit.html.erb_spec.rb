require 'spec_helper'

describe "factories/edit.html.erb" do
  before(:each) do
    @factory = assign(:factory, stub_model(Factory,
      :name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit factory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => factory_path(@factory), :method => "post" do
      assert_select "input#factory_name", :name => "factory[name]"
      assert_select "input#factory_location", :name => "factory[location]"
    end
  end
end
