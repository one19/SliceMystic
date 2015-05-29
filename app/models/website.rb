# == Schema Information
#
# Table name: websites
#
#  id     :integer          not null, primary key
#  name   :text
#  chunks :text
#  icons  :text
#  meta   :text
#  url    :text
#

class Website < ActiveRecord::Base
  has_and_belongs_to_many :pies
  has_many :updates
end
