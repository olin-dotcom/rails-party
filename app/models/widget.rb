class Widget < ActiveRecord::Base
  belongs_to :factory
  
  validates :name, :price, :description, :presence => true
  validates :price, :numericality => { :greater_than => 0.01 }
  validates :name, :uniqueness => true
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
#  factory_id  :integer
#

