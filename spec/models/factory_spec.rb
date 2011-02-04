require 'spec_helper'

describe Factory do

  it "should require a name" do
    something = Factory.create(:name => '', :location => "somewhere")
    something.should_not be_valid
  end
  
  it "should require a location" do
    something = Factory.create(:name => 'name', :location => '')
    something.should_not be_valid
  end
  
  it "should have a unique name" do
    first = Factory.create(:name => 'first', :location => 'here')
    second = Factory.create(:name => 'first', :location => 'here')
    
    first.should be_valid
    second.should_not be_valid
  end
  
  it "should have a name with a maximum 20 characters" do
    something = Factory.create(:name => '123456789012345678901', :location => 'here')
    
    something.should_not be_valid
  end

end

# == Schema Information
#
# Table name: factories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  location   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

