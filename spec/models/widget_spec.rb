require 'spec_helper'

describe Widget do
  it "should have a name" do
    bad_widget = Widget.create(:name => '', 
                               :description => 'description',
                               :price => 3 )
                               
    bad_widget.should_not be_valid
    bad_widget.should have(1).error_on(:name)
  end
  
  it "should have a price" do 
    bad_widget = Widget.create(:name => 'name', 
                               :description => 'description',
                               :price => '' )

    bad_widget.should_not be_valid
    bad_widget.should have(2).errors_on(:price)
  end    
  
  it "should have a valid price" do
    bad_widget = Widget.create(:name => 'name', 
                                :description => 'description',
                                :price => 'price' )
    bad_widget.should_not be_valid
    bad_widget.should have(1).errors_on(:price)
                                
  end
  
  it "should have a price greater than 0.01" do
    bad_widget = Widget.create(:name => 'name', 
                                :description => 'description',
                                :price => 0 )
    bad_widget.should_not be_valid
    bad_widget.should have(1).errors_on(:price)
  end
  
  it "should be unique in name" do
    first = Widget.create(:name => 'name', 
              :description => 'd', :price => 10.00)
    second = Widget.create(:name => 'name', 
              :description => 'd', :price => 10.00)
    first.should be_valid
    second.should_not be_valid
  end

  it "should have a description" do
    bad_widget = Widget.create(:name => 'name', 
                               :description => '',
                               :price => 'price' )

    bad_widget.should_not be_valid
    bad_widget.should have(1).error_on(:description)
  end
    
  it "has none to begin with" do
    Widget.count.should == 0
  end
  
  it "has one after adding one" do
    Widget.create(:name => 'name', :description => 'foo', :price => 3)
    Widget.count.should == 1
  end
  
  it "has none after the previous test is complete" do
    Widget.count.should == 0
  end
  
  it "should have none after removing one" do
    w = Widget.create(:name => 'name', :description => 'foo', :price => 3)
    Widget.count.should == 1
    w.destroy
    Widget.count.should == 0
  end
    
end

# == Schema Information
#
# Table name: widgets
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  price       :decimal(, )
#

