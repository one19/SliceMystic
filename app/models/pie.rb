# == Schema Information
#
# Table name: pies
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  color       :string
#  created_at  :datetime
#  updated_at  :datetime
#

class Pie < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :websites
  has_many :updates, :through => :websites
end
