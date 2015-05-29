# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  icon            :string
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string
#  admin           :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  has_and_belongs_to_many :pies
  has_many :websites, :through => :pies

  has_secure_password
  
  ##error handling for things like "no blank names"
  validates :name, :presence => true
  validates :name, :uniqueness => true #case-sensative
end
