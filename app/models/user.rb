# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :text
#  email      :text
#  icon       :string
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  has_many :pies
end
