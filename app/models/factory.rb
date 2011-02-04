class Factory < ActiveRecord::Base
  has_many :widgets
  
  validates :name, :location, :presence => true
  validates :name, :uniqueness => true
  validates :name, :length => {:maximum => 20}
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

