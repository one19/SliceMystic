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
end
