class Widget < ActiveRecord::Base
  validates :name, :price, :description, :presence => true
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

